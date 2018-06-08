<ul>
    @foreach($reports as $report)
    <li><a href="{{ url('/grade-detail/'.$report->member_id.'/'.$report->order_number) }}">{{ $report->user_name }}-的报告</a>-{{ $report->created_at > 0 ? date('Y-m-d H:i:s', $report->created_at) : '' }}</li>
    @endforeach
</ul>
<ul>
    @foreach($reports as $report)
    <li>
        <a href="{{ url('/grade-detail/'.$report->member_id.'/'.$report->order_number) }}">{{ $report->user_name }}-的报告分数</a>
        -{{ $report->created_at > 0 ? date('Y-m-d H:i:s', $report->created_at) : '' }}
        <a href="{{ url('/report/'.$report->member_id.'?order_number='.$report->order_number) }}" target="_blank">{{ $report->user_name }}-的报告</a>
    </li>
    @endforeach
</ul>
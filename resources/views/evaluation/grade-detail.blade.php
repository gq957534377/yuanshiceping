<h2>兴趣得分</h2>
<table>
    <tr>
        <th>名称</th>
        <th>分数</th>
        <th>排名</th>
        <th>权重</th>
    </tr>
    @foreach($interest_grades as $grade)
    <tr>
        <td>{{ $grade['name'] }}</td>
        <td>{{ $grade['grade'] }}</td>
        <td>{{ $grade['rank'] }}</td>
        <td>{{ $grade['weight'] }}</td>

    </tr>
    @endforeach
</table>

<h2>才干（能力）得分</h2>
<table>
    <tr>
        <th>名称</th>
        <th>分数</th>
        <th>排名</th>
        <th>权重</th>
        <th>对应相应风格加权重</th>
    </tr>
    @foreach($ability_grades as $grade)
        <tr>
            <td>{{ $grade['name'] }}</td>
            <td>{{ $grade['grade'] }}</td>
            <td>{{ $grade['rank'] }}</td>
            <td>{{ $grade['weight'] }}</td>
            <td>{{ $grade['personality_type_weight'] }}</td>

        </tr>
    @endforeach
</table>

<h2>风格得分</h2>
<table>
    <tr>
        <th>名称</th>
        <th>分数</th>
        <th>排名</th>
        <th>权重</th>
    </tr>
    @foreach($personality_grades as $grade)
        <tr>
            <td>{{ $grade['name'] }}</td>
            <td>{{ $grade['grade'] }}</td>
            <td>{{ $grade['rank'] }}</td>
            <td>{{ $grade['weight'] }}</td>

        </tr>
    @endforeach
</table>

<h2>素质模型得分</h2>
<table>
    <tr>
        <th>名称</th>
        <th>分数</th>
        <th>排名</th>
        <th>权重</th>
    </tr>
    @foreach($quality_grades as $grade)
        <tr>
            <td>{{ $grade['name'] }}</td>
            <td>{{ $grade['grade'] }}</td>
            <td>{{ $grade['rank'] }}</td>
            <td>{{ $grade['weight'] }}</td>

        </tr>
    @endforeach
</table>
<h2>专业得分</h2>
<table>
    <tr>
        <th>名称</th>
        <th>分数</th>
        <th>排名</th>
        <th>权重</th>
    </tr>
    @foreach($major_grades as $grade)
        <tr>
            <td>{{ $grade['name'] }}</td>
            <td>{{ $grade['grade'] }}</td>
            <td>{{ $grade['rank'] }}</td>
            <td>{{ $grade['weight'] }}</td>

        </tr>
    @endforeach
</table>D
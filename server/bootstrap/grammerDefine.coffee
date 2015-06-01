Meteor.startup ->
  Grammar.remove({})
  if Grammar.find().count() is 0
    grammars = [
      'lesson' : 'Cấu trúc chung của câu',
      'slug' : 'cau_truc_chung_cua_cau',
      'content' : """
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Subject</th>
            <th>Verb</th>
            <th>Complement</th>
            <th>Modifier</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Jack and Bob</td><td>played</td><td>a game</td><td>last week.</td>
          </tr>
          <tr>
            <td>We/They/You</td><td>got</td><td>a new job</td><td>yesterday.</td>
          </tr>
          <tr>
            <td>He/She</td><td>goes to</td><td>school</td><td>everyday</td>
          </tr>
          <tr>
            <td>I </td><td>like</td><td>running</td><td></td>
          </tr>
        </tbody>
      </table>

<h3>Subject (chủ ngữ)</h3>
<p>Chủ ngữ là chủ thể của hành động trong câu, thường đứng trước động từ (verb). Chủ ngữ thường là một danh từ (noun)
  hoặc một ngữ danh từ (noun phase - một nhóm từ kết thúc bằng 1 danh từ, trong trường hợp này ngữ danh từ không được bắt đầu bằng 1 giới từ).
  Chủ ngữ thường đứng đầu câu vằ quyết định việc chia động từ.
</p>
<p>
Chú ý rằng mọi câu trong tiếng Anh đều có chủ ngữ (Trong câu mệnh lệnh, chủ ngữ được ngầm hiểu là người nghe. Ví dụ: "Get out" = Đi ra ngoài!).
</p>
<ul>
  <li><b>Milk</b> is delicious. (một danh từ)</li>
  <li><b>That new, red car</b> is yours. (một ngữ danh từ)</li>
</ul>
<p>Đôi khi không có chủ ngữ thật sự, trong trường hợp đó, It hoặc There đóng vai trò chủ ngữ giả.</p>
<ul>
  <li><b>It</b> is raining</li>
  <li><b>There</b> is a fire in that building</li>
  <li><b>There</b> are many students in the room</li>
  <li><b>It</b> is the face that the moon goes around the earth</li>
</ul>
<h3>Verb (động từ)</h3>
<p>Động từ là từ chỉ hành động hoặc trạng thái của chủ ngữ. Mọi câu đều phải có động từ. Nó có thể là một từ đơn hoặc một ngữ động từ. Ngữ động từ (verb phrase) là một nhóm từ gồm một hoặc nhiều trợ động từ (auxiliary) và một động từ chính.</p>
<ul>
  <li>I <b>love</b> you. (chỉ hành động)</li>
  <li>Chilli <b>is</b> hot. (chỉ trạng thái)</li>
  <li>I <b>have seen</b> the movie three times before. (auxiliary: <b>have</b>; main verb: <b>seen</b>)</li>
  <li>I <b>am going</b> to Sai Gon tomorrow. (auxiliary: <b>am</b>; main verb: <b>going</b>)</li>
</ul>
<h3>Complement (vị ngữ)</h3>
<p>Vị ngữ là từ hoặc cụm từ chỉ đối tượng tác động của chủ ngữ. Cũng giống như chủ ngữ, vị ngữ thường là danh từ hoặc ngữ danh từ không bắt đầu bằng giới từ, tuy nhiên vị ngữ thường đứng sau động từ. Không phải câu nào cũng có complement. Vị ngữ trả lời cho câu hỏi What? hoặc Whom?</p>
<ul>
  <li>John bought <b>a car</b> yesterday. (What did John buy?)</li>
  <li>Jill wants to drink <b>some water</b>. (What does he want to drink?)</li>
  <li>She saw <b>John</b> at the movie last night. (Whom did she see at the movie?)</li>
</ul>
<h3>Modifier (trạng từ)</h3>
<p>
Trạng từ là từ hoặc cụm từ chỉ thời gian, địa điểm hoặc cách thức của hành động. Không phải câu nào cũng có trạng từ. Chúng thường là các cụm giới từ (prepositional phrase), phó từ (adverb) hoặc một cụm phó từ (adverbial phrase). Chúng trả lời câu hỏi When?, Where? hoặc How? Một cụm giới từ là một cụm từ bắt đầu bằng một giới từ và kết thúc bằng một danh từ (VD: in the morning, on the table,...). Nếu có nhiều trạng từ trong câu thì trạng từ chỉ thời gian thường đi sau cùng.
</p>
<ul>
<li>John bought a book <b>at the bookstore</b>. (Where did John buy a book?)</li>
<li>She saw John at the movie <b>last night</b>. (Where did she see John? When did she see him?)</li>
<li>She drives <b>very fast</b>. (How does she drive?)</li>
</ul>
<p>
Chú ý rằng trạng từ thường đi sau vị ngữ nhưng không nhất thiết. Tuy nhiên trạng từ là cụm giới từ không được nằm giữa động từ và vị ngữ.
</p>
<ul>
<li>She <b>drove</b> <i>on the street</i> <b>her new car</b>. (Sai)</li>
<li>She <b>drove</b> <b>her new car</b> <i>on the street</i>. (Đúng)</li>
</ul>
"""
    ,
      'lesson' : 'Danh từ',
      'slug' : 'danh_tu'
      'content' : """
<h3>Danh từ đếm được và không đếm được (Count noun/ Non-count noun):</h3>
<p>
<b>Danh từ đếm được (Count noun):</b>
Là danh từ có thể dùng được với số đếm, do đó nó có 2 hình thái số ít và số nhiều. Nó dùng được với <i class="text-danger">a</i> hay với <i class="text-danger">the</i>.
 <b>VD:</b> one book, two books, ... </p>
<p>
<b>Danh từ không đếm được (Non-count noun):</b>
Không dùng được với số đếm, do đó nó không có hình thái số ít, số nhiều. Nó không thể dùng được với <i class="text-danger">a</i>, còn <i class="text-danger">the</i> chỉ trong một số trường hợp đặc biệt.
<b>VD:</b> milk (sữa). Bạn không thể nói "one milk", "two milks" ... (Một số vật chất không đếm được có thể được chứa trong các bình đựng, bao bì... đếm được.
<b>VD:</b> one glass of milk - một cốc sữa). </p>
<p>
Một số danh từ đếm được có hình thái số nhiều đặc biệt. <b>VD:</b> person - people; child - children; tooth – teeth; foot – feet; mouse – mice ...
</p>
<p>
Một số danh từ đếm được có dạng số ít/ số nhiều như nhau chỉ phân biệt bằng có <i class="text-danger">"a/an"</i> và không có <i class="text-danger">"a/an"</i> : an aircraft/ aircraft; a sheep/ sheep; a fish/ fish.
</p>
<p>
Một số các danh từ không đếm được như food, meat, money, sand, water ... đôi khi được dùng như các danh từ số nhiều để chỉ các dạng, loại khác nhau của vật liệu đó.
</p>
<ul>
<li>This is <b>one of the foods</b> that my doctor wants me to eat. </li>
</ul>
<p>
Danh từ <i class="text-danger">"time"</i> nếu dùng với nghĩa là <i class="text-danger">"thời gian"</i> là không đếm được nhưng khi dùng với nghĩa là <i class="text-danger">"thời đại"</i> hay <i class="text-danger">"số lần"</i> là danh từ đếm được.
</p>
<ul>
<li>You have spent too much <b>time</b> on that homework. (thời gian, không đếm được)</li>
<li>I have seen that movie three <b>times</b> before. (số lần, đếm được)</li>
</ul>
<p><b>Bảng sau là các định ngữ dùng được với các danh từ đếm được và không đếm được.</b><p>
<table class="table table-bordered">
<thead>
<tr>
<th>With countable noun</th>
<th>With uncountable noun</th>
</tr>
<thead>
<tbody>
<tr><td>a(n), the, some, any</td>   <td>the, some, any</td></tr>
<tr><td>this, that, these, those</td>   <td>this, that</td></tr>
<tr><td>none, one, two, three,...</td>   <td>None</td></tr>
<tr><td>many</td>   <td>much (thường dùng trong câu phủ định, câu hỏi)</td></tr>
<tr><td>a lot of</td>   <td>a lot of</td></tr>
<tr><td>a [large / great] <b>number of</b> </td>   <td>a large <b>amount of</b></td></tr>
<tr><td>(a) few</td>   <td>(a) little </td></tr>
<tr><td>fewer... than</td>   <td>less...than </td></tr>
<tr><td>more...than</td>   <td>more...than</td></tr>
</tbody>
</table>
<p><b>Một số từ không đếm được nên biết:</b></p>
<table class="table table-bordered">
<tbody>
  <tr>
    <td>sand</td><td>food</td><td>meat</td><td> water</td>
  </tr>
  <tr>
    <td>money</td><td> news</td><td> measles (bệnh sởi)</td><td> soap</td>
  </tr>
  <tr>
    <td>information</td><td> air</td><td> mumps (bệnh quai bị)</td><td> economics</td>
  </tr>
  <tr>
    <td>physics</td><td> mathematics </td><td>politics</td><td> homework</td>
</tr>
</tbody>
</table>
<p><b>Note:</b> <i class="text-danger">advertising</i> là danh từ không đếm được nhưng <i class="text-danger">advertisement</i> là danh từ đếm được, chỉ một quảng cáo cụ thể nào đó. </p>
<ul>
<li>There are too many <b>advertisements</b> during TV shows.</li>
</ul>
<h3>Cách dùng quán từ không xác định <i>"a"</i> và <i>"an"</i></h3>
<p>Dùng <i class="text-danger">a</i> hoặc <i class="text-danger">an</i> trước một danh từ số ít đếm được. Chúng có nghĩa là <b>một</b>. Chúng được dùng trong câu có tính khái quát hoặc đề cập đến một chủ thể chưa được đề cập từ trước.</p>
<ul>
<li><b>A ball</b> is round. (nghĩa chung, khái quát, chỉ tất cả các quả bóng)</li>
<li>I saw <b>a boy</b> in the street. (chúng ta không biết cậu bé nào, chưa được đề cập trước đó)</li>
</ul>
<p><b>Dùng "an" với:</b></p>
<p>Quán từ an được dùng trước từ bắt đầu bằng nguyên âm (trong cách phát âm, chứ không phải trong cách viết). Bao gồm:</p>
<ul>
<li></li>
</ul>
"""
    ]
    grammars.forEach (el)->
      Grammar.insert(el)
  return
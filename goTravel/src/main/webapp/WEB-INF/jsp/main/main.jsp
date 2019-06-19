<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script>
$(function(){
	
	// 예약일자 데이트피커 적용
	$("#strtDate,#endDate").datepicker();

});

//입력칸 빈칸 유효성 체크 메서드
var validChk = {
		
		emptyValChk : function() {
			
			var valid = false;
			
			$("#fullData").find("input").each(function() {
				var $this = $(this);
				
				// console.log("***", $this.attr("id"));
				
				if ($this.val() === "") {
					alert("빈 값이 있습니다.");
					
					valid = false;
					return valid;
					
				} else {
					valid = true;
				}
			});
			
			return valid;
		}
}

// 입력 데이터 submit
var init = {
		
		// 입력 데이터 제출 메서드 (go버튼 클릭 시 호출)
		submitInitFn : function() {
			
			// 빈 값 체크 결과가 false인 경우 if문이 true가 되면서
			// 구현부 안에 있는 return이 실행되어 submit 되지 않는다.
			
			/*
			if (!validChk.emptyValChk()) {
				return;
			} 
			*/
			// 빈 값이 없는 경우 submit
			$("#searchFrm").attr("action", "content.do");
			$("#searchFrm").submit();
		}
}

</script>

  <div class="container">
  	<div style="margin-bottom:50px">
    	<h1 class="my-4">마음에 드는 숙소를 찾아보세요</h1>
	</div>
    <!-- search room -->
    <div class="searchRoom row" style="margin-bottom:100px">
    
    <!-- 메인화면 입력 데이터 : 시작 -->
    	<form id="searchFrm"> 
    		<div id="fullData" >
    			
    			<!-- 목적지 입력 -->
    			<div class="data1" style="float: left; margin-right:50px">
	    			<div style="margin-bottom:8px">
	    				<span>목적지</span>
	    			</div>
	    			<div>
	    				<!-- 
	    				<select name="region" id="region" class="form-control" style="float: left; width:197px">
						    <option value="seoul">서울</option>
						    <option value="jeju">제주</option>
						    <option value="kangwon">강원</option>
						    <option value="incheon">인천</option>
						</select>	
						 -->
						 <input type="text" name="region" id="region" class="form-control" style="float: left; width:197px" placeholder="모든 지역" autocomplete=off>	    			
	    			</div>
    			</div>
 				
 				<!-- 예약일자 입력 -->
     			<div class="data2" style="float: left; margin-right:50px">
	    			<div style="margin-bottom:8px">
	    				<span>체크인-체크아웃</span>
	    			</div>
	    			<div>
	    				<input id="strtDate" name="strtDate" class="form-control" style="float: left; width:197px" placeholder="년/월/일" autocomplete=off>
	    					<span style="float: left;"> - </span>
	    				<input id="endDate" name="endDate" class="form-control" style=width:197px placeholder="년/월/일" autocomplete=off >
	    			</div>
    			</div>
    			
    			<!-- 인원수 입력 -->
     			<div class="data3" style="float: left; margin-right:50px">
	    			<div style="margin-bottom:8px">
	    				<span>인원</span>
	    			</div>
	    			<div>
	    				<select name="adults" id="adults" class="form-control" style="float: left; width:197px">
						    <option value="1">성인 1명</option>
						    <option value="2">성인 2명</option>
						    <option value="3">성인 3명</option>
						    <option value="4">성인 4명</option>
						</select>
	    			</div>
    			</div>
    			
    			<!-- 제출버튼 -->
    			<span class="input-group-btn">
                	<button id="searchBtn" class="btn btn-secondary" type="button" onclick="init.submitInitFn()">Go!</button>
              	</span>    			   			
    		</div>
    	</form>
    <!-- 메인화면 입력 데이터 : 끝 -->
	</div>
    <!-- /.row -->
    
    <!-- Portfolio Section -->
    <h2 class="my-4">Portfolio Heading</h2>

    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project One</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project Two</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project Three</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project Four</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project Five</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">Project Six</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->
  </div>

<?php
$pdo = ORM::get_db();
$subcategories = get_subcat_of_maincat($_REQUEST['catId']);
if(count($subcategories) <1)
{
    echo json_encode(['error'=>"No Category Found"]);
}else{

    $result = "";
    $i = 0;
    foreach($subcategories as $subcategory)
    {
       $result.= " <li data-id=".$subcategory['id']."  class=\"qucikad-ajaxsearch-li-cats\" data-catid=".$subcategory['slug']."><span class=\"qucikad-as-cat\">".$subcategory['name']."</span></li>";
    }
    echo $result;

}
?>
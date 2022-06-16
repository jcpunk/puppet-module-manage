# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include manage
class manage (
  Hash[String, Hash] $create_resources = {}
) {
  $create_resources.each |$type, $resources| {
    $resources.each |$title, $attributes| {
      create_resources($type, { $title => $attributes })
    }
  }
}

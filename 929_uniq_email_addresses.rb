# https://leetcode.com/problems/unique-email-addresses/

# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
    modified_emails = []
    
    emails.each do |email|
        local = email.split("@").first
        domain = email.split("@").last
        
        local.gsub!(".", "")
        local.gsub!(/[+].+$/, "")
        modified_emails << local + "@" + domain
    end
    
    return modified_emails.uniq.count
end
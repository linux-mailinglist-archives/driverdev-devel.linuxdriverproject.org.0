Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA1C19303F
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 19:21:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A05186D76;
	Wed, 25 Mar 2020 18:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3itdmC-kHFdS; Wed, 25 Mar 2020 18:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2591C86D79;
	Wed, 25 Mar 2020 18:21:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67A4A1BF2C6
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 18:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6378B20551
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 18:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Epuk-TCEl-5J for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 18:20:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from startupcenter.cloudhost.id (startupcenter.cloudhost.id
 [103.236.201.239])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B1C8203C2
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 18:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=alumnia.id; 
 s=default; h=Message-ID:Reply-To:Subject:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=drBn2kpNZB8r8rJ7Wr2E8WdgCkZKzLdgfc3kaDapurA=; b=JkRnkIxj8YJm9pjtGF4PGX+mR7
 fjioNdv4+wtcqvH6nuKBZLIElmEsFPFXfLWvs798UFn+orCfTaW9AoKoG157+chkTRG9vEc/+TSaY
 AdcBWHRq+9q3W60cXwXNMnlsemCZ0keyJ3LdV6dVHhxCshkwqzHpvD/j6BsydGIm5+zTFZkwXfgM3
 vjhGQ7ZtEygF5ThDWlhtc+Z4matt2ZMs8HJMMkR7dAzXBZyIpjOfo8R9sThxXsFnZP6nd1jkhf6kt
 3gQ9iir+SV3Ub0oyzhNEH1C6F5W7WeqXVnti7PcEjG01GliF4XKVEKuBnRB9QBOHMzw+DgZGbAMKu
 v1X3FQhw==;
Received: from [::1] (port=51532 helo=startupcenter.cloudhost.id)
 by startupcenter.cloudhost.id with esmtpa (Exim 4.93)
 (envelope-from <noreply@alumnia.id>)
 id 1jH8be-0003dG-Ny; Wed, 25 Mar 2020 23:10:14 +0700
MIME-Version: 1.0
Date: Wed, 25 Mar 2020 23:10:14 +0700
From: Alumnia <noreply@alumnia.id>
To: undisclosed-recipients:;
Subject: Hello
Organization: Alumnia
Mail-Reply-To: reemhashimi2020@daum.net
Message-ID: <a6f04883fb00ccdb5c6b20b1746eabff@alumnia.id>
X-Sender: noreply@alumnia.id
User-Agent: Roundcube Webmail/1.3.8
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - startupcenter.cloudhost.id
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - alumnia.id
X-Get-Message-Sender-Via: startupcenter.cloudhost.id: authenticated_id:
 noreply@alumnia.id
X-Authenticated-Sender: startupcenter.cloudhost.id: noreply@alumnia.id
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: reemhashimi2020@daum.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



-- 
My name is Reem E. Al-Hashimi, the Emirates Minister of State and 
Managing Director of United Arab Emirates (Dubai) World Expo 2020 
Committee. I am writing you to stand as my partner to receive my share 
of gratification from foreign companies whom I helped during the bidding 
exercise towards the Dubai World Expo 2020 Committee and also i want to 
use this funds assist Corona virus Symptoms and Causes.

Am a single Arab women and serving as a minister, there is a limit to my 
personal income and investment level and  For this reason, I cannot 
receive such a huge sum back to my country or my personal account, so an 
agreement was reached with the foreign companies to direct the 
gratifications to an open beneficiary account with a financial 
institution where it will be possible for me to instruct further 
transfer of the fund to a third party account for investment purpose 
which is the reason i contacted you to receive the fund as my partner 
for investment in your country.

The amount is valued at Euro 47,745,533.00 with a financial institution 
waiting my instruction for further transfer to a destination account as 
soon as I have your information indicating interest to receive and 
invest the fund, I will compensate you with 30% of the total amount and 
you will also get benefit from the investment.

If you can handle the fund in a good investment. reply on this email 
only: reemalhashimi@daum.net
Regards,
Ms. Reem
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

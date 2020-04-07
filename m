Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFBD1A0D85
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 14:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A97F4214E9;
	Tue,  7 Apr 2020 12:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UAxKioIVzpdI; Tue,  7 Apr 2020 12:24:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B6A7520108;
	Tue,  7 Apr 2020 12:24:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B44F1BF842
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 12:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47E77846C0
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 12:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ldJU8MMfJXNR for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 12:23:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wrqvpqhd.outbound-email.sendgrid.net (unknown [149.72.52.13])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 59C4682F92
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 12:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net; 
 h=mime-version:content-type:content-transfer-encoding:from:to:subject:reply-to;
 s=smtpapi; bh=drBn2kpNZB8r8rJ7Wr2E8WdgCkZKzLdgfc3kaDapurA=; b=p3
 MODSwMto4vB8L7LDdGno0chrE/QampwOzucUylB84r/Lmh3obhCX8omN5xm7R3Mv
 5FPqrjyX37A/Hr6SF6VQRWrUMzVzis58SvonRSYC+wy6eMpYvc+aSSD/glM7PZLG
 FEKxw38WrZGnz/mYtZtl8mzc0JCc/jPcwxd05ERNs=
Received: by filter0927p1iad2.sendgrid.net with SMTP id
 filter0927p1iad2-17965-5E8C67CB-5
 2020-04-07 11:45:15.404224649 +0000 UTC m=+475927.754241315
Received: from ganosh.co.kr (unknown)
 by ismtpd0007p1lon1.sendgrid.net (SG) with ESMTP id VnZv48JuQYCvyUb77JYYRg
 Tue, 07 Apr 2020 11:45:15.044 +0000 (UTC)
Received: from [::1] (port=56484 helo=ganosh.co.kr)
 by ganosh.co.kr with esmtpa (Exim 4.93)
 (envelope-from <smtpadm@defeatrelief.com>)
 id 1jLmfH-0004u3-Az; Tue, 07 Apr 2020 11:45:11 +0000
MIME-Version: 1.0
Date: Tue, 07 Apr 2020 11:45:18 +0000 (UTC)
From: Reem Al-hashimi <smtpadm@defeatrelief.com>
To: undisclosed-recipients:;
Subject: Help People In Needs...
Mail-Reply-To: reemhashimi2020@daum.net
Message-ID: <40bdf85315fb87baa887ede2b7e4242f@defeatrelief.com>
X-Sender: smtpadm@defeatrelief.com
User-Agent: Roundcube Webmail/1.3.8
X-SG-EID: ozywA/lQdStT5LpY0GZ4eIikKAHLxKz6DZJM4wH8O34lPIhPCCZSv3uqF7r+RD/S/4n1jVSergdfhv
 43CMCCQ6suPI8jf980dUHbCMdfyhvuFt/lvFlxHqAK3st4l036wARtAlEgzFh3L/tQEPMHAjeiG3sA
 U+D67hJu0YdncBMaSoydFOUXXRhecVQleyJBXSU1MXbrRrQkipyg/U+QA2REALvS51GUnEpQfBpWFX
 4=
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8B826835F
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Sep 2020 06:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E19AB8718C;
	Mon, 14 Sep 2020 04:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aDvIs1bmZzyY; Mon, 14 Sep 2020 04:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58ECE87167;
	Mon, 14 Sep 2020 04:09:03 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A4081BF3CB;
 Mon, 14 Sep 2020 04:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5154187167;
 Mon, 14 Sep 2020 04:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eh7qVMMTiR1f; Mon, 14 Sep 2020 04:08:58 +0000 (UTC)
X-Greylist: delayed 08:19:31 by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from web.crytrex.com (web.crytrex.com [185.221.172.127])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DDF087166;
 Mon, 14 Sep 2020 04:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cryptocap.it; s=default; h=Content-Transfer-Encoding:Content-Type:
 Message-ID:Reply-To:Subject:To:From:Date:MIME-Version:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H/n7uX5A820w9Roh7v+0h/WFbqZKS125d0c6aMTkFWw=; b=m1XQpLHYbOQf5T8TDGHkqAs/cD
 IrL0torlDYq9FEZMC6uoHa10OQXwxEu5SbxlwBZEV+gomEPVnQ7Sndqq+XLu2fPoHlAE82s3p8Hgs
 QwAs3ilQ3LFFqhhbCYjLzvC3evXAHgy1VIAwmnpyPRBTWtp5CDkDMH5WZF2v3EoS87NC7ojC6BFrl
 1m3h9qUM31KzZWU31/4eNKuSHYrToighy2+Qp3BS6faJDuyd25fmANDHIXy8w9roQU6S6gHIy9i2b
 SG62c9vbKS3YlLWMuQ8ew6GhVFEZmX/jYLcLKpxT7gX2nZ9MrDVP3fPPl0AC7TD6SoRFlWGR0x6e6
 VxpgUVIg==;
Received: from [::1] (port=52520 helo=web.crytrex.com)
 by web.crytrex.com with esmtpa (Exim 4.93)
 (envelope-from <support@cryptocap.it>)
 id 1kHXoP-0003eb-DU; Sun, 13 Sep 2020 21:37:21 +0200
MIME-Version: 1.0
Date: Sun, 13 Sep 2020 21:37:20 +0200
From: Greg Marume <support@cryptocap.it>
To: undisclosed-recipients:;
Subject: YOUR PAYMENT ARRANGEMENT
User-Agent: Roundcube Webmail/1.4.7
Message-ID: <36b2951fba9947ea86dea4aa04ec7d4c@cryptocap.it>
X-Sender: support@cryptocap.it
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - web.crytrex.com
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cryptocap.it
X-Get-Message-Sender-Via: web.crytrex.com: authenticated_id:
 support@cryptocap.it
X-Authenticated-Sender: web.crytrex.com: support@cryptocap.it
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
Reply-To: s197811@vivaldi.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



-- 
FEDERAL REPUBLIC OF NIGERIA
COMMITTEE ON FOREIGN PAYMENT
(RESOLUTION PANEL ON CONTRACT PAYMENT)
ABUJA-NIGERIA
http://www.nassnig.org
Our Ref: FGN /SNT/STB Your ref:

I, The Senate Representative ,Federal Republic of Nigeria , DR GREG 
MARUME
(GCFR)
and the Governor of Central Bank Of Nigeria , Mr. EMEIFELE in
Conjunction with the EFCC Director , MR MAGU, held a meeting
last week concerning contract payment , both foreign and local 
contractors
and some inheritance funds.

On going through contractors file yesterday, we discovered that your 
file
was dumped untreated, so at this juncture, we apologize for the delay of
your contract payment and please stop communicating with any office now 
and
attention to the appointed office below for you to receive your payment
accordingly.

However,I wish to inform you now that your outstanding contract payment 
is
($15,000,000. fifteen Million United States dollars).

Now you?re new Payment Reference No.-35460021, Allocation No: 674632
Password No: 339331 , Pin Code No: 55674 and your Certificate of Merit
Payment
No : 103 , CBN Released Code No: 0763; Immediate Telex confirmation No:
-1114433 ; Secret Code No: XXTN013, Having received these vital payment
number , therefore You are qualified now to received and confirm Your 
payment with
the Federal Government of Nigeria immediately within the next week.

We the entire members of the house of senate are using this urgent 
medium to

advise you to make payment of your GNAB fee of $350 without any further
delay. Be rest assured that our appointment to handle and take care of 
the
movement of the fund will not be in vain as we are giving you 100% 
guarantee

to deliver the work as soon as your western union information reach us 
at
our house email addresses it is not less than 24hours that the order was
placed.
Note that your fund will be free to move from the bank without any delay 
if
you get the governments non assessment bonds (GNAB) which is $350 only 
to
make sure that no government monitor or agent can access the fund during 
the

delivery remittance. You have to get the gnab written on your name and
stamped before the fund credit to your bank account.
This was why we have not approved or sign off the bonds of your transfer
registry today as the bank insists on the GNAB.
Based on these explanations, you are hereby advised to send payment
information of $350 through our direct email address on or before ten
working days.as the closing date placed.
This gnab will show that the transaction was made through the full 
capacity
of the government and will not be queried for certain circumstance. Use 
the
information bellow for the payment of the $350 GNAB requirements:
Receiver name: Mr IGBOKWE TIMOTHY
location: Lagos- Nigeria.
Text question---gnab,
Answer----final
Bear in mind that this is the final stage of this transfer.
As soon as this is done, it will take only 24hours for the fund to be
credited in your designated bank account, you will be contacted by your 
Bank
herself.
Best Regards.
DR GREG MARUME
Senate Representative
(Federal Republic of Nigeria)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161122524E3
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Aug 2020 03:06:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B750A87EC4;
	Wed, 26 Aug 2020 01:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AlOBMCfrbfhi; Wed, 26 Aug 2020 01:05:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 991B687E99;
	Wed, 26 Aug 2020 01:05:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 771711BF321
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 01:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63FA5227E1
 for <devel@linuxdriverproject.org>; Wed, 26 Aug 2020 01:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rriGLE1Usz+n for <devel@linuxdriverproject.org>;
 Wed, 26 Aug 2020 01:05:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dfpcmefspt.underdc.com.br (dfpcmefspt.underdc.com.br
 [189.113.3.106])
 by silver.osuosl.org (Postfix) with ESMTPS id E89CA227CE
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 01:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=ariam.com.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Subject:From:Reply-To:Sender:Message-ID:To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AWlPLTDTeyFpOZBg3KfsRi7Ie1SI625FVLtTh3SdOt0=; b=sp7hEseBClDauJ5icy8pdD+Cg1
 3TJNHVxQwMcJ5nCgdIgNQzUCm4OyxKizXAKhFxWTozcDpj4UeH7igJKB/UmkKm3k+nHGOvMQxK6GV
 RuHUolijdKjSc8XeIl4731UPIAJYT0r6FUCigfKWE3tqw0h9UGdZkz/7BfB4ELK6DztU=;
Received: from [156.96.56.48] (port=51136 helo=User)
 by dfpcmefspt.underdc.com.br with esmtpa (Exim 4.93)
 (envelope-from <ariam@ariam.com.br>)
 id 1kAjgl-0006N6-S3; Tue, 25 Aug 2020 21:53:20 -0300
From: "COCA COLA."<ariam@ariam.com.br>
Subject: COCA-COLA  LOTTERY ORGANIZATION.
Date: Tue, 25 Aug 2020 17:53:04 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - dfpcmefspt.underdc.com.br
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - ariam.com.br
X-Get-Message-Sender-Via: dfpcmefspt.underdc.com.br: authenticated_id:
 ariam@ariam.com.br
X-Authenticated-Sender: dfpcmefspt.underdc.com.br: ariam@ariam.com.br
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Message-Id: <20200826010556.63FA5227E1@silver.osuosl.org>
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
Reply-To: mrcjames001@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

COCA-COLA LOTTERY ORGANIZATION
TICKET FREE/ONLINE E-MAIL ADDRESS WINNINGS DEPARTMENT.

Greetings Winner,

If you are the correct owner of this email address? If yes then be glad this day as the result of the Coca-Cola lotto online e-mail address free-ticket winning draws of January 2020 ,held in United States of America has just been released and we are glad to announce to you that your email address won you the sweepstakes in the first category and you are entitled to claim the sum of One Million Two Hundred And Fifty Thousand United States Dollars(US$1,250,000.00). Your email address was entered for the online draw on this ticket No: 546-373-66773 and won on this Lucky No: (14)-(8)-(5)-(19)-(28)-(12)-(30).

On how to receive your won prize of US$1.250,000.00M. (One Million Two Hundred And Fifty Thousand United States Dollars Only) to enable Mr.James Curtise ascertain you as the rightful winner and receiver of the US$1.250,000.00M.Make sure you include the below listed information in your contact email to him.

Your complete official names, country of origin and country of residence/work, contact telephone and mobile numbers, amount won,lucky numbers, date of draw. OPTIONAL: - [Sex, age, occupation and job title].

Just in case you are thinking of how you won without entering then know again that this very draw of the Coca-Cola Lottery Organization in which you have emerged as a winner was a free ticket online email address draws were thousands of email addresses was collected from almost all world wide websites and used for the online draws/sweepstakes and during winners selection your email address came out among the first ten which won you the lottery in the first winnings category and entitles you to claim the US$1,250,000.00 dollars.


Yours Faithfully,
Mr.James Curtise
COCA-COLA  LOTTERY ORGANIZATION.
Online Winning Notification Department.
Tel: +1-403-607-1548
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

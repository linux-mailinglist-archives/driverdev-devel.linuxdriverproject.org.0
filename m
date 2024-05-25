Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9804B8CF57B
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2024 20:39:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF0FB4014C;
	Sun, 26 May 2024 18:39:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MhuGzfZsE8pn; Sun, 26 May 2024 18:39:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8895C4015A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8895C4015A;
	Sun, 26 May 2024 18:39:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DD531D12A3
 for <devel@linuxdriverproject.org>; Sun, 26 May 2024 18:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 669964012F
 for <devel@linuxdriverproject.org>; Sun, 26 May 2024 18:39:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lXYp3LvVcvVY for <devel@linuxdriverproject.org>;
 Sun, 26 May 2024 18:39:41 +0000 (UTC)
X-Greylist: delayed 101514 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 26 May 2024 18:39:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F0BF4014C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F0BF4014C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.186.192.16;
 helo=mail.dairikab.go.id; envelope-from=puskesmas.kutabuluh@dairikab.go.id;
 receiver=<UNKNOWN> 
Received: from mail.dairikab.go.id (unknown [103.186.192.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F0BF4014C
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2024 18:39:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.dairikab.go.id (Postfix) with ESMTP id 48DBA488266A;
 Sat, 25 May 2024 13:08:16 +0700 (WIB)
Received: from mail.dairikab.go.id ([127.0.0.1])
 by localhost (mail.dairikab.go.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 63uzhinDQx3P; Sat, 25 May 2024 13:08:14 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mail.dairikab.go.id (Postfix) with ESMTP id EFFA1489870E;
 Sat, 25 May 2024 10:22:59 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.dairikab.go.id EFFA1489870E
X-Virus-Scanned: amavisd-new at dairikab.go.id
Received: from mail.dairikab.go.id ([127.0.0.1])
 by localhost (mail.dairikab.go.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id d5qBH7pUe1Wt; Sat, 25 May 2024 10:22:59 +0700 (WIB)
Received: from [103.195.236.221] (unknown [103.195.236.221])
 by mail.dairikab.go.id (Postfix) with ESMTPSA id 0903D489870F;
 Sat, 25 May 2024 09:56:54 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: I ANTICIPATE YOUR URGENT!!
To: Recipients <puskesmas.kutabuluh@dairikab.go.id>
From: puskesmas.kutabuluh@dairikab.go.id
Date: Sat, 25 May 2024 09:56:53 +0700
Message-Id: <20240525025656.0903D489870F@mail.dairikab.go.id>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dairikab.go.id; 
 s=7AEC4404-F04A-11EB-AB9E-BF45B53556D9; t=1716607380;
 bh=Wvz5EhN4Xid2D6oijHwMEg/L7Ra4SmVJT8sv5jghmOI=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=g9BaZKZjjUGyH0ZD18tltF52onMeKMJVxDl50XYrbY5DrhH5P4ir0Va0EqMwU2Cd8
 6T1MiF52W+hOYx9Zme1JTIPvTV/Kb3K7blO/YyCmtUX9qUjrV22J+B+D2x9UDdkN4y
 mISz3XSEzuY6OuahbtZt38WywgOL15EFP+aDAU9ernmXaqz9SBtL+tXzjMden3t7D1
 zEC0ZnlldwDVK5vDKoVnkvCiozsgesNIHjjcEN/sKpHpyn/LZxUIsXlFL3Lc1b5lT0
 iBt2SQSUoaB8/f2BlvRAzLxtqUxhzVd322ji1eOQWQH5QJ4AeghdWJIFZ1DdmZ9biM
 RcZ4perNSHYSA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=dairikab.go.id
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key,
 unprotected) header.d=dairikab.go.id header.i=@dairikab.go.id
 header.a=rsa-sha256 header.s=7AEC4404-F04A-11EB-AB9E-BF45B53556D9
 header.b=g9BaZKZj
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
Reply-To: DonLuisMunozParrondo@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear,

I hope this message finds you well. Upon reviewing your profile, I was inspired by your character and felt compelled to reach out regarding a business opportunity that could be mutually beneficial. Specifically, I am seeking a trustworthy individual for a transaction involving an inheritance claim left behind by the late Mr. Burhan, tragically passed away from COVID-19 on March 2, 2020, at the age of 71. He left behind a substantial deposit of $7,500,000 (Seven Million Five Hundred Thousand United States Dollars) in his account with our Bank. Despite his passing, no one has come forward to claim these funds. The bank's board of directors has instructed me as his Account Officer before his sudden death to locate his next of kin in order to release the deposit. However, as Mr. Burhan did not specify a next of kin in his security file with the bank, I am reaching out to you for a sincere collaboration in partnership to actualize this potential.

I propose to share the proceeds from this transaction based on a percentage ratio that I believe will be agreeable to you. Upon successful completion of the transaction, you will receive 40%, while I will take 50%, and 10% will be allocated for any incurred expenses. I will provide you with further details upon receiving your satisfactory reply via my personal email:(DonLuisMunozParrondo@mail.com)

Best regards,
Don, luis Munoz Parrondo@mail.com
(DonLuisMunozParrondo@mail.com)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

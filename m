Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FC516F46A
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Feb 2020 01:41:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56D7986B10;
	Wed, 26 Feb 2020 00:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M9O6m4tHEjrn; Wed, 26 Feb 2020 00:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12166861F9;
	Wed, 26 Feb 2020 00:41:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC4EE1BF9AD
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 00:41:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A68D986E6E
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 00:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v1CfXLAEvFxK for <devel@linuxdriverproject.org>;
 Wed, 26 Feb 2020 00:41:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from IITRESA04.iitr.ac.in (mxgw4.iitr.ac.in [103.37.200.239])
 by hemlock.osuosl.org (Postfix) with ESMTP id BCBB585F38
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 00:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=iitr.ac.in; s=iitrselector; t=1582677667;
 h=message-id:reply-to:from:subject:date:mime-version:
 content-transfer-encoding;
 bh=3MmqTKuA+NETN2btB6PJJQBpC/SdLXlWFSsyztt26GE=;
 b=KSoxNI/k7AaLFM8NPInOr/LtbvxFyf3AIPZ6yAQItc4Lw0uDligIS9/i
 hhBJAeWBKv07+bnLxz4mMuH6wNsHxRrGz/NCtQMaY+cHf9YnOyft763WT
 VnkaSooK4qDe6iTv7WDGpE44PTBURt4pCp27uLL6s2rLaBOVjwEvdAHq9 E=;
Authentication-Results: IITRESA04.iitr.ac.in;
 dkim=none (message not signed) header.i=none;
 spf=None smtp.pra=ynegifpt@iitr.ac.in;
 spf=None smtp.mailfrom=ynegifpt@iitr.ac.in;
 spf=None smtp.helo=postmaster@IITRESA01.iitr.ac.in
Received-SPF: None (IITRESA04.iitr.ac.in: no sender authenticity
 information available from domain of ynegifpt@iitr.ac.in)
 identity=pra; client-ip=192.168.101.110;
 receiver=IITRESA04.iitr.ac.in;
 envelope-from="ynegifpt@iitr.ac.in";
 x-sender="ynegifpt@iitr.ac.in"; x-conformance=sidf_compatible
Received-SPF: None (IITRESA04.iitr.ac.in: no sender authenticity
 information available from domain of ynegifpt@iitr.ac.in)
 identity=mailfrom; client-ip=192.168.101.110;
 receiver=IITRESA04.iitr.ac.in;
 envelope-from="ynegifpt@iitr.ac.in";
 x-sender="ynegifpt@iitr.ac.in"; x-conformance=sidf_compatible
Received-SPF: None (IITRESA04.iitr.ac.in: no sender authenticity
 information available from domain of
 postmaster@IITRESA01.iitr.ac.in) identity=helo;
 client-ip=192.168.101.110; receiver=IITRESA04.iitr.ac.in;
 envelope-from="ynegifpt@iitr.ac.in";
 x-sender="postmaster@IITRESA01.iitr.ac.in";
 x-conformance=sidf_compatible
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: dFQA80/WBU8eJh6RooLjnNvop6JjOIcKmJFLgT0o1OF1FRhDqeUrx6QrbNxW5HvbKBeh/RI9HQ
 tlbg1CeWLKCQ==
Received: from nsmtp.iitr.ac.in (HELO IITRESA01.iitr.ac.in) ([192.168.101.110])
 by IITRESA04.iitr.ac.in with ESMTP; 26 Feb 2020 06:10:59 +0530
Message-Id: <738cb5$1dt3s@IITRESA01.iitr.ac.in>
IronPort-SDR: q9KQkQpnf/N3tB4JqVvBOSg/U4Q4hlZWc4U2f7cDiuNtIUF+j4XD/5WVVZlD987RgTlEPrI84a
 YfL0qzRz0ymQ==
Received: from unknown (HELO User) ([13.78.147.24])
 by IITRESA01.iitr.ac.in with ESMTP; 26 Feb 2020 06:10:30 +0530
From: "Ms. Reem"<ynegifpt@iitr.ac.in>
Subject: Re:Reply ok{{{{
Date: Wed, 26 Feb 2020 00:40:57 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
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
Reply-To: reemal-hashimi@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

My name is Reem Ebrahim Al-Hashimi, I am the "Minister of state and Petroleum" also "Minister of State for International 

Cooperation" in UAE.  I write to solicit for your partnership in claiming of $47Million from a Financial Home in Cambodia.

The aforementioned fund $47 Million is my share percentage from my Oil/Gas deal with Cambodia/Vietnam Government within  

2013/2014, influentially I don't want my government to know about the fund. If this proposal interests you, let me know by 

sending me an email and I will send to you detailed Information on how this business would be successfully transacted. Be 

informed that nobody knows about the secret of this fund except me and I know how to carry out the entire transaction.

Furthermore, as a Minister of Petroleum, I am not allowed to be part of such a deal, because it's against my country's 

professional practice policy. So I am compelled to ask that you will stand on my behalf and receive this fund into any 

account that is solely controlled by you.

I will compensate you with 30% of the total amount involved as gratification for being my partner in the transfer. Reply 

to my private email as stated: reemal-hashimi@yandex.com

Regards,
Reem Ebrahim Al-Hashimi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

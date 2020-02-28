Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A20173279
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Feb 2020 09:12:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7477386C4A;
	Fri, 28 Feb 2020 08:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TSOrC7pwH5F; Fri, 28 Feb 2020 08:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BF7F86AEE;
	Fri, 28 Feb 2020 08:12:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7275A1BF362
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 08:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E940203AE
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 08:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SS+n9wZsgjkW for <devel@linuxdriverproject.org>;
 Fri, 28 Feb 2020 08:12:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from IITRESA04.iitr.ac.in (mxgw4.iitr.ac.in [103.37.200.239])
 by silver.osuosl.org (Postfix) with ESMTP id 2555120450
 for <devel@driverdev.osuosl.org>; Fri, 28 Feb 2020 08:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=iitr.ac.in; s=iitrselector; t=1582877527;
 h=message-id:reply-to:from:subject:date:mime-version:
 content-transfer-encoding;
 bh=7OP8986h4lDOKXAsashCWqI3eBIqBsetMTx3KdpdheE=;
 b=RewPuPKzy4+nBpiRVFFtMdGuhF4Fq4chMgYD056xAQmJ0S4Xf8Q+gOoZ
 D2r24RCVfdWQrrKC3W9CbGRsKHHCmlVbGDnmAfafHOMjMvmCm6CSSVJUE
 o69AmJdY5r9hfe2Ppy+zAmY/nCebVQ4RXu4CjbrQoigudkYIzgRZ8JQqU U=;
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
IronPort-SDR: xcfE2/IBAqlaPzWFP1ian0QHHKTv5yjVc01DBY4pUfNa8XHfDP8vViG0bJIkY6c6YukRo6uNXb
 NJ1HSRyHoUnQ==
Received: from nsmtp.iitr.ac.in (HELO IITRESA01.iitr.ac.in) ([192.168.101.110])
 by IITRESA04.iitr.ac.in with ESMTP; 28 Feb 2020 13:42:02 +0530
Message-Id: <738cb5$1jcri@IITRESA01.iitr.ac.in>
IronPort-SDR: 08BFXjWySZ+d+1idnNxg0fsyQkzjmMlFLeB837rxxAUrCO881BStD/n0S0OU07oXQawlk87gI2
 RZv81fK/LI+w==
Received: from unknown (HELO User) ([52.231.163.229])
 by IITRESA01.iitr.ac.in with ESMTP; 28 Feb 2020 13:41:55 +0530
From: "Ms. Reem"<ynegifpt@iitr.ac.in>
Subject: Re:Funds
Date: Fri, 28 Feb 2020 08:12:00 -0000
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

My name is Reem Ebrahim Al-Hashimi, I am the "Minister of state and Petroleum" also "Minister of State for International Cooperation" in UAE.  I write to solicit for your partnership in claiming of $47Million from a Financial Home in Cambodia.

The aforementioned fund $47 Million is my share percentage from my Oil/Gas deal with Cambodia/Vietnam Government within  2013/2014, influentially I don't want my government to know about the fund. If this proposal interests you, let me know by sending me an email and I will send to you detailed Information on how this business would be successfully transacted. Be informed that nobody knows about the secret of this fund except me and I know how to carry out the entire transaction.

Furthermore, as a Minister of Petroleum, I am not allowed to be part of such a deal, because it's against my country's professional practice policy. So I am compelled to ask that you will stand on my behalf and receive this fund into any account that is solely controlled by you.

I will compensate you with 30% of the total amount involved as gratification for being my partner in the transfer. Reply to my private email as stated: reemal-hashimi@yandex.com

Regards,
Reem Ebrahim Al-Hashimi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

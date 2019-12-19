Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6B8126F58
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 22:07:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C64BE887B3;
	Thu, 19 Dec 2019 21:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x1H67q7CC3sQ; Thu, 19 Dec 2019 21:07:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFBA287DA1;
	Thu, 19 Dec 2019 21:07:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 926E91BF42D
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 21:07:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EDBA87062
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 21:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RUw2omsyXXJK for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 21:07:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from standard7.doveserver.com (standard7.doveserver.com
 [67.220.187.210])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0769587059
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 21:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=joeblasc0.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5nz6drlcwLkkcnrPddyhNVU4n5QUNNiisMSZ45MDcC0=; b=u0u6wwYfguTg57pAJZ9RXmBeeG
 Qkbguf20kkNzaUL+cT+0k5XkImbBDSZjMQ83lC+wIs+LqQd981ugWMFLv63Qih1P4uDATEKJc3ODw
 HT0lg4WVYJcP35zWAx7hKMSNEg3mj/F97SL4wwCqgZcv4UaZxxTe/T+ktwBskh1vVaduHOKRJoXHm
 C27sWwLFC+zy8nWUbcJRH/C6KSGCaKfsSU50eCnfyF2jx+Q3ty9lNDb4ow9/x4WH0yVQA89iSEjhn
 nhOm8++PB2t0Po9mJ4NgyGqkStn5ZFM4ANnDmOoFmMc8wlLBE4hhsUe30rBpsXIkqbnumsj4LFaPN
 xiHyfdTw==;
Received: from [172.107.168.105] (port=49612 helo=gmail.com)
 by standard7.doveserver.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <info@gmail.com>) id 1ihnrZ-00DUaH-GX
 for devel@driverdev.osuosl.org; Thu, 19 Dec 2019 05:56:37 +0100
From: Mr Lili <info@gmail.com>
To: devel@driverdev.osuosl.org
Subject: hello
Date: 18 Dec 2019 22:59:14 -0800
Message-ID: <20191218225913.8695B5DE085B4872@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - standard7.doveserver.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - gmail.com
X-Get-Message-Sender-Via: standard7.doveserver.com: authenticated_id:
 4thuser@joeblasc0.com
X-Authenticated-Sender: standard7.doveserver.com: 4thuser@joeblasc0.com
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
Reply-To: songlile110@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

My name is Mr.Song Lile (I work with a Bank as an account officer 
in the
Treasury/Credit Control Unit) I want to solicit your attention to 
receive the money on my behalf.
The purpose of my contacting you is because you live in outside 
Hong Kong.
When you reply this message, I will send you the full details and 
more
information about myself and the funds.
Thank you.
Kindest regards,
Mr.Song Lile
songlile110@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C272440FF1
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Oct 2021 18:54:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34D3660628;
	Sun, 31 Oct 2021 17:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kmfv-nZET4fc; Sun, 31 Oct 2021 17:54:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A15EF6067D;
	Sun, 31 Oct 2021 17:54:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EEBFF1BF39F
 for <devel@linuxdriverproject.org>; Sun, 31 Oct 2021 17:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD6F460593
 for <devel@linuxdriverproject.org>; Sun, 31 Oct 2021 17:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJlBhvelnSAL for <devel@linuxdriverproject.org>;
 Sun, 31 Oct 2021 17:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mailgate.kemenperin.go.id (mailgate.kemenperin.go.id
 [202.47.80.142])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5606860591
 for <devel@driverdev.osuosl.org>; Sun, 31 Oct 2021 17:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mailgate.kemenperin.go.id (Postfix) with ESMTP id CC7928286AA;
 Mon,  1 Nov 2021 00:39:21 +0700 (WIB)
Received: from mailgate.kemenperin.go.id ([127.0.0.1])
 by localhost (mailgate.kemenperin.go.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id M0kebm77Teg4; Mon,  1 Nov 2021 00:39:20 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mailgate.kemenperin.go.id (Postfix) with ESMTP id 6D2E48286AE;
 Mon,  1 Nov 2021 00:39:18 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mailgate.kemenperin.go.id 6D2E48286AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kemenperin.go.id;
 s=3298A942-BBC6-11E3-B333-483736368EC2; t=1635701958;
 bh=+tje3x5yIAM91gcZZJ8xoRjx6IuR+B3ePoXPCKu2mgI=;
 h=Date:From:Message-ID:MIME-Version;
 b=VhlTqrE3WSMdbDV5ML++UEUTppa6b8HNfprrJprMZG7cqUL46whas+fxwKZbRp8xH
 l36FEQgaaLeVr8eIN6l57qCjUY1/MTxke/O7XSEzVPrcosrVdZ9rsKmHdTTYdYf0ll
 nkDDCpFLWf2oDKzpbjtZrgjq59jB3TSu+kV9MeMo=
X-Virus-Scanned: amavisd-new at kemenperin.go.id
Received: from mailgate.kemenperin.go.id ([127.0.0.1])
 by localhost (mailgate.kemenperin.go.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id igetJAPkk7U0; Mon,  1 Nov 2021 00:39:18 +0700 (WIB)
Received: from mailgate.kemenperin.go.id (mailgate.kemenperin.go.id
 [10.1.0.89])
 by mailgate.kemenperin.go.id (Postfix) with ESMTP id 047EB8286A0;
 Mon,  1 Nov 2021 00:39:10 +0700 (WIB)
Date: Mon, 1 Nov 2021 00:39:09 +0700 (WIB)
From: Manuel Franco <silitonga@kemenperin.go.id>
Message-ID: <1813105855.326067.1635701949890.JavaMail.zimbra@kemenperin.go.id>
Subject: 2,000,000.00 Euro
MIME-Version: 1.0
X-Originating-IP: [10.1.0.89]
Thread-Index: Rc07z4zuj7w66chiYJCRC031ZEpyeA==
Thread-Topic: 2,000,000.00 Euro
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
Reply-To: Manuel Franco <manuelfrancospende1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



-- 
You have a donation of 2,000,000.00 Euro.Get back to me now so we can proceed.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

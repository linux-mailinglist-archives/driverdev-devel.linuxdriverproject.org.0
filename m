Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFC5FFF59
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 08:13:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CF8A877B5;
	Mon, 18 Nov 2019 07:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FwQxE0WXuDoL; Mon, 18 Nov 2019 07:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F2C8877AE;
	Mon, 18 Nov 2019 07:13:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA0C61BF94B
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C0513877E6
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G0mZSDzq-wFS for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 07:13:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from server.petroholics.com (server.petroholics.com [198.1.110.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F2A44877D1
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=petroholics.com; s=default; h=Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Message-ID:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xlnmEfsHLG6mCO2GQfvgKrBSgMe1KdWlMZzYBRlpmpg=; b=kBEnYQNjOSdRwUNymFI9NrY55
 /ympnIW23r+eQioFIsVasZWGFsHHwFf3UtYWblM3Nez5Q/rucBIXKVowY98Dz9Sp9c6KwOIiukq2n
 7l/PnhIrJjXGHPneXne0cxLgHRwhxjzCc+42DB9dI+UrZFWsKydF4D/uEADDKJnN25IRUFtQ11trl
 w9jCAbG4kdE50dUIw8OpoKQJw19cyx+/F+dtrSB8mbGfdZupbIKfh+BYJ4DIJk3475xSnnRNndRbh
 AUnVb/KXZMBjVE/pDPV9ehDOLBRuJPX8g/NQuMw3mFIBeET83oR7bZPLFspkEwilF+K78AEB2xkHM
 pB96/rxRA==;
Received: from [88.234.23.133] (port=50347 helo=[192.168.1.34])
 by server.petroholics.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.91) (envelope-from <carla@petroholics.com>)
 id 1iWbCR-0001wt-1V; Mon, 18 Nov 2019 07:11:51 +0000
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?q?YOUR_EMAIL_ADDRESS_HAVE_WON_=C2=A31=2C000=2C000_GBP?=
To: Recipients <carla@petroholics.com>
From: "COCA COLA COMPANY"<carla@petroholics.com>
Date: Mon, 18 Nov 2019 08:12:22 +0100
X-Antivirus: Avast (VPS 191117-0, 11/17/2019), Outbound message
X-Antivirus-Status: Clean
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.petroholics.com
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - petroholics.com
X-Get-Message-Sender-Via: server.petroholics.com: authenticated_id:
 carla@petroholics.com
X-Authenticated-Sender: server.petroholics.com: carla@petroholics.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Message-Id: <20191118071309.C0513877E6@hemlock.osuosl.org>
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
Reply-To: cocaclacompany@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

YOUR EMAIL ADDRESS HAVE WON =A31,000,000 GBP IN ONGOING COCA-COLA 2019 PROM=
O WITH ONE HP LAPTOP, TWO COCA-COLA T-SHIRTS AND TWO SHOE. FOR CLAIM ,SEND =
YOUR DETAILS TO DR PETER COLE ON VIA EMAIL: cocaclacompany@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

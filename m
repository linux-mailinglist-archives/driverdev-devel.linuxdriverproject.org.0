Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3358D8700DD
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Mar 2024 12:57:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6F4782103;
	Mon,  4 Mar 2024 11:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J1M-vddhAujQ; Mon,  4 Mar 2024 11:57:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26F0E8210B
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26F0E8210B;
	Mon,  4 Mar 2024 11:57:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44D4E1BF95C
 for <devel@linuxdriverproject.org>; Mon,  4 Mar 2024 11:57:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0AE240BD6
 for <devel@linuxdriverproject.org>; Mon,  4 Mar 2024 11:57:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oj9GedOqGlbI for <devel@linuxdriverproject.org>;
 Mon,  4 Mar 2024 11:57:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=164.132.48.43;
 helo=mail.thrivehub.pl; envelope-from=szymon.jankowski@thrivehub.pl;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 971B240BE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 971B240BE9
Received: from mail.thrivehub.pl (mail.thrivehub.pl [164.132.48.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 971B240BE9
 for <devel@driverdev.osuosl.org>; Mon,  4 Mar 2024 11:57:47 +0000 (UTC)
Received: by mail.thrivehub.pl (Postfix, from userid 1002)
 id 6B8232E5CF; Mon,  4 Mar 2024 08:36:10 +0000 (UTC)
Received: by mail.thrivehub.pl for <devel@driverdev.osuosl.org>;
 Mon,  4 Mar 2024 08:35:59 GMT
Message-ID: <20240304074500-0.1.4z.26xgn.0.ve6qudd4gw@thrivehub.pl>
Date: Mon,  4 Mar 2024 08:35:59 GMT
From: "Szymon Jankowski" <szymon.jankowski@thrivehub.pl>
To: <devel@driverdev.osuosl.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.thrivehub.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=thrivehub.pl; s=mail; 
 t=1709544702; bh=m3ZUCTPRVLoDFM+cXi7VhHW+xNF3eUdGHrj1eDbLwQI=;
 h=Date:From:To:Subject:From;
 b=SHLwvpWm+oQWktHQo5X0UYAEfDWhTu7Fns0HvhCFLGnXpNzqLOgFk3UclEYgbSU30
 ysFx6pf62FY27YzbMmScMPwmDH1la7oCPfTZn1iSJmEdhuiM+D6ItrJFrnR2AHsVIT
 BQrWcePrIKcPpvAK0z0UGlgGK0nGByRyeGkz+BtFJvJtyWNEu3gid6vxRayXRotM9x
 84OoXTXyb4Xi39lpq2rfWc9gaLaVmWa5SziRaNGQHkqQ5ARGFo6Jg1Ozw3JRiFl7kB
 AZAnqQVywscfW7szcObQrnpV0+wEIP1mYS5luNRN5TzYYdRmKKkqyqWFKns6vWyrAV
 Xg0EBBZEbSt5A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=thrivehub.pl
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=thrivehub.pl header.i=@thrivehub.pl header.a=rsa-sha256
 header.s=mail header.b=SHLwvpWm
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RHppZcWEIGRvYnJ5LAoKUG96d29sacWCZW0gc29iaWUgbmEga29udGFrdCwgcG9uaWV3YcW8IGpl
c3RlbSB6YWludGVyZXNvd2FueSB3ZXJ5ZmlrYWNqxIUgbW/FvGxpd2/Fm2NpIG5hd2nEhXphbmlh
IHdzcMOzxYJwcmFjeS4KCldzcGllcmFteSBmaXJteSB3IHBvenlza2l3YW5pdSBub3d5Y2gga2xp
ZW50w7N3IGJpem5lc293eWNoLgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgY2VsdSBwcnpl
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCgoKUG96ZHJhd2lhbQpTenlt
b24gSmFua293c2tpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=

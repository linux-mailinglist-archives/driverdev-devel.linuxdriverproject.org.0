Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D74D791D9C8
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2024 10:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97D1181B23;
	Mon,  1 Jul 2024 08:16:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vpdmjj52Yu1K; Mon,  1 Jul 2024 08:16:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB20E81BC2
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB20E81BC2;
	Mon,  1 Jul 2024 08:16:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DEC961BF33F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 08:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C8D5C409E4
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2024 08:16:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OnSTRjpy4hqW for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2024 08:16:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=51.38.99.212;
 helo=mail.synergyflux.pl; envelope-from=konrad.zielinski@synergyflux.pl;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7492640448
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7492640448
Received: from mail.synergyflux.pl (mail.synergyflux.pl [51.38.99.212])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7492640448
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2024 08:16:44 +0000 (UTC)
Received: by mail.synergyflux.pl (Postfix, from userid 1002)
 id 9B9F0288D0; Mon,  1 Jul 2024 10:16:07 +0200 (CEST)
Received: by mail.synergyflux.pl for <devel@driverdev.osuosl.org>;
 Mon,  1 Jul 2024 08:15:56 GMT
Message-ID: <20240701084500-0.1.cg.323xo.0.u1h99d4ibi@synergyflux.pl>
Date: Mon,  1 Jul 2024 08:15:56 GMT
From: =?UTF-8?Q?"Konrad_Zieli=C5=84ski_"?= <konrad.zielinski@synergyflux.pl>
To: <devel@driverdev.osuosl.org>
Subject: Instalacja pv
X-Mailer: mail.synergyflux.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=synergyflux.pl; s=mail; t=1719821799;
 bh=n9RRp8MlabRDJBtJNro49Rmci90RtotaZYZ8+xo6WI4=;
 h=Date:From:To:Subject:From;
 b=FVMCVaw70xf58vJWvbUPgiXXvzgwnUIEU7gSbcx+4bs/jbhFmlRoGGAmHBTQjO/3u
 L/Cgv1rFEK/YnhgL7BmQ/XT6MM952gSu9nptNtDQvazs5aW7srqAwXgXn/n3LzbMaO
 oPeo7UnVksLvNh0pTxCxbnBrrzfnW0RorOEqkxyglwjfrx8cP6je3ZMvB7MBhL43q5
 m6CnbPql1io30x0ACHHUnIBjeHxAHYcIqIvECQuwF7PVGLE//6/762tG6aYazoIKSM
 SwcGnO153sKsT8L+f5iAhvNoDI111IXoT9edHrx1AZ7+ALkwHl0f/Pk1kVyeZ/ui/z
 U7ldFVPtss5SA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=synergyflux.pl
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=synergyflux.pl header.i=@synergyflux.pl
 header.a=rsa-sha256 header.s=mail header.b=FVMCVaw7
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

RHppZcWEIGRvYnJ5LAoKY3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIG5pZXpvYm93acSFenVq
xIVjxIUgcm96bW93xJkgbmEgdGVtYXQgZm90b3dvbHRhaWtpPwoKSmFrbyBmaXJtYSBzcGVjamFs
aXp1asSFY2Egc2nEmSB3IGluc3RhbGFjamkgaSBzZXJ3aXNpZSBuYWpsZXBzenljaCBqYWtvxZtj
aW93byBwYW5lbGkgc8WCb25lY3pueWNoIG5hIHJ5bmt1IGNoY2lhxYJieW0gcHJ6ZWRzdGF3acSH
IHByb3BvenljasSZLCBqYWvEhSB3c3DDs2xuaWUgeiB6ZXNwb8WCZW0gcHJ6eWdvdG93YWxpxZtt
eSBkbGEgUGHFhHN0d2Egb2JpZWt0dS4KCkLEmWTEmSB3ZHppxJljem55IHphIHdpYWRvbW/Fm8SH
IG9kIFBhxYRzdHdhIGN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhy4KCgpQb3pkcmF3aWFtCktvbnJh
ZCBaaWVsacWEc2tpIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK

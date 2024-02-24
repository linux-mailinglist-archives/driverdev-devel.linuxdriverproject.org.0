Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42398628AA
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Feb 2024 02:03:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F8B740579;
	Sun, 25 Feb 2024 01:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fSCFZDbdSFfT; Sun, 25 Feb 2024 01:02:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C02740585
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C02740585;
	Sun, 25 Feb 2024 01:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24CD31BF853
 for <devel@linuxdriverproject.org>; Sun, 25 Feb 2024 01:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1168A40579
 for <devel@linuxdriverproject.org>; Sun, 25 Feb 2024 01:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2zwWG3Ob9qtJ for <devel@linuxdriverproject.org>;
 Sun, 25 Feb 2024 01:02:54 +0000 (UTC)
X-Greylist: delayed 11023 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 25 Feb 2024 01:02:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AA87140571
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA87140571
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.157.0.129;
 helo=shiva.jussieu.fr; envelope-from=atilla.eren-mamuk@insp.upmc.fr;
 receiver=<UNKNOWN> 
Received: from shiva.jussieu.fr (shiva.jussieu.fr [134.157.0.129])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA87140571
 for <devel@driverdev.osuosl.org>; Sun, 25 Feb 2024 01:02:52 +0000 (UTC)
Received: from mailix1.insp.jussieu.fr (mailix1.insp.jussieu.fr
 [134.157.37.11])
 by shiva.jussieu.fr (8.15.2/jtpda-5.4) with ESMTP id 41OLtunU019483
 ; Sat, 24 Feb 2024 22:55:56 +0100 (CET)
X-Ids: 168
Received: from hordix.insp.jussieu.fr (hordix.insp.jussieu.fr [134.157.37.9])
 by mailix1.insp.jussieu.fr (Postfix-INSP-2.10.1) with ESMTPSA id
 23294C022FD4; Sat, 24 Feb 2024 22:55:55 +0100 (CET)
Received: from [193.27.14.187] ([193.27.14.187]) by webmail.insp.jussieu.fr
 (Horde Framework) with HTTPS; Sat, 24 Feb 2024 21:55:54 +0000
Date: Sat, 24 Feb 2024 21:55:54 +0000
Message-ID: <20240224215554.Horde.OAjzygwd2fvMjgY2Wt11xbn@webmail.insp.jussieu.fr>
From: Victoria Cleland <atilla.eren-mamuk@insp.upmc.fr>
Subject: Re: Hallo
User-Agent: Horde Application Framework 5
Organization: Institut des NanoSciences de Paris
X-InspUpmcSession: aemamuk
MIME-Version: 1.0
Content-Disposition: inline
X-Miltered: at jchkmail2.reseau.jussieu.fr with ID 65DA65EC.00D by Joe's
 j-chkmail (http : // j-chkmail dot ensmp dot fr)!
X-j-chkmail-Enveloppe: 65DA65EC.00D from
 mailix1.insp.jussieu.fr/mailix1.insp.jussieu.fr/134.157.37.11/mailix1.insp.jussieu.fr/<atilla.eren-mamuk@insp.upmc.fr>
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=insp.upmc.fr
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
Reply-To: vcleland8@aol.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgoKSGFsbG8sCgpJY2ggaGFiZSBlaW5lbiB3ZXJ0dm9sbGVuIEdlc2Now6RmdHN2b3JzY2hsYWcs
IGRlbiBpY2ggbWl0IElobmVuIHRlaWxlbiAgCm3DtmNodGUuIERhbWl0IGljaCBuw6RoZXIgZGFy
YXVmIGVpbmdlaGVuIGthbm4sIGlzdCBJaHJlIFp1c3RpbW11bmcgIAplcmZvcmRlcmxpY2guCgpG
w7xyIHdlaXRlcmUgRGV0YWlscyBhbnR3b3J0ZW4gU2llIGF1ZiBFbmdsaXNjaC4KCkhpbndlaXM6
IEVzIGlzdCBrZWluZSBmaW5hbnppZWxsZSBWZXJwZmxpY2h0dW5nIGVyZm9yZGVybGljaC4KCkdy
w7zDn2UsClZpY3RvcmlhIENsZWxhbmQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fClBl
cnPDtm5saWNoZXIgQXNzaXN0ZW50OiBBdGlsbGEgTWFtdWsKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A5F6E1D7B
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Apr 2023 09:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E265427AC;
	Fri, 14 Apr 2023 07:51:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E265427AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qi7s-eOf-Q0K; Fri, 14 Apr 2023 07:51:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1EE642795;
	Fri, 14 Apr 2023 07:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1EE642795
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9BB7A1C3E9B
 for <devel@linuxdriverproject.org>; Fri, 14 Apr 2023 07:51:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B13F8428E
 for <devel@linuxdriverproject.org>; Fri, 14 Apr 2023 07:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B13F8428E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q17xk52RZiiM for <devel@linuxdriverproject.org>;
 Fri, 14 Apr 2023 07:51:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FFFE84230
Received: from mail.crawnon.pl (mail.crawnon.pl [51.68.198.42])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FFFE84230
 for <devel@driverdev.osuosl.org>; Fri, 14 Apr 2023 07:51:34 +0000 (UTC)
Received: by mail.crawnon.pl (Postfix, from userid 1002)
 id D3AC3A282D; Fri, 14 Apr 2023 07:51:19 +0000 (UTC)
Received: by mail.crawnon.pl for <devel@driverdev.osuosl.org>;
 Fri, 14 Apr 2023 07:51:11 GMT
Message-ID: <20230414064500-0.1.ac.yjb3.0.t17nxjp5j6@crawnon.pl>
Date: Fri, 14 Apr 2023 07:51:11 GMT
From: =?UTF-8?Q?"Miko=C5=82aj_Fiodorczyk"?= <mikolaj.fiodorczyk@crawnon.pl>
To: <devel@driverdev.osuosl.org>
Subject: Fotowoltaika- propozycja instalacji
X-Mailer: mail.crawnon.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=crawnon.pl; s=mail; 
 t=1681458685; bh=vdn5P4TcqbO5KLDdR/tfEP9AjvOe1HPkPv4ZFGYr8oc=;
 h=Date:From:To:Subject:From;
 b=j43GMjpx3NvQ2/6NCA1KBD5a2y4iJor3AXTc8jmL74Gq5gAHMhg5cY8kv40A1c1aA
 +M2aLodjds4+hg2jrhFakoSba4dQ/fEjB+ImZ2acBRCVBt0IplWdvGMp6ofixFuqGh
 9+aM9G7ici+Bq8h37bRjA93OhWGjzFnyXM7dZNGt3bLAY41iJQAf1F8AOFhds22Do2
 Mn7pvweP5zuSUCa11A+1sShGE+bdPskhF8zqNsRAJD3XviZOoAT7+RTiyu0MU6PkG3
 J+hEIXWYSP7OwaMlG8H7VNwpPMq4oSt8oKNrhvGjov+6WMGdtJ9pkfkNSHEbNb1hth
 paFd2c2PuaJPA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=crawnon.pl header.i=@crawnon.pl
 header.a=rsa-sha256 header.s=mail header.b=j43GMjpx
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

RHppZcWEIGRvYnJ5LAogCkN6eSByb3p3YcW8YWxpIFBhxYRzdHdvIG1vbnRhxbwgc3lzdGVtdSBm
b3Rvd29sdGFpY3puZWdvPwogCkluc3RhbGFjamEgZm90b3dvbHRhaWN6bmEgamVzdCBuYWpsZXBz
enltIHNwb3NvYmVtIG5hIG9ibmnFvGVuaWUgd3lzb2tvxZtjaSByYWNodW5rw7N3IHphIHByxIVk
IChwb3pvc3RhasSFIHR5bGtvIG9wxYJhdHkgc3RhxYJlKSBpIHphYmV6cGllY3plbmllIHNpxJkg
cHJ6ZWQgcm9zbsSFY3ltaSBjZW5hbWkgZW5lcmdpaSBlbGVrdHJ5Y3puZWouIEplc3QgdG8gdyBw
ZcWCbmkgb2RuYXdpYWxuZSBpIGJlemVtaXN5am5lIMW6csOzZMWCbyBlbmVyZ2lpLCBkemnEmWtp
IGN6ZW11IHByenljenluaWFteSBzacSZIGRvIG9jaHJvbnkgxZtyb2Rvd2lza2EgbmF0dXJhbG5l
Z28uCiAKRHppYcWCYW15IG9kIHdpZWx1IGxhdCBuYSByeW5rdSBlbmVyZ2V0eWN6bnltLiBQcnp5
Z290dWplbXkgcHJvamVrdCwgd3ljZW7EmSBvcmF6IGtvbXBsZWtzb3dvIHd5a29uYW15IGkgemfF
gm9zaW15IHJlYWxpemFjasSZIGRvIHpha8WCYWR1IGVuZXJnZXR5Y3puZWdvLiAKIApDenkgY2hj
xIUgUGHFhHN0d28gcG96bmHEhyBuYXN6xIUgcHJvcG96eWNqxJk/ICAKCgpQb3pkcmF3aWFtLApN
aWtvxYJhaiBGaW9kb3JjenlrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=

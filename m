Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 376877EC894
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Nov 2023 17:29:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD56942245;
	Wed, 15 Nov 2023 16:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD56942245
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gB61BbuskyBh; Wed, 15 Nov 2023 16:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E16EF4223B;
	Wed, 15 Nov 2023 16:29:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E16EF4223B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B294D1BF59A
 for <devel@linuxdriverproject.org>; Wed, 15 Nov 2023 16:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7FA9142254
 for <devel@linuxdriverproject.org>; Wed, 15 Nov 2023 16:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FA9142254
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQQ9SIolU4CV for <devel@linuxdriverproject.org>;
 Wed, 15 Nov 2023 16:29:16 +0000 (UTC)
X-Greylist: delayed 73938 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Nov 2023 16:29:16 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73DA342245
Received: from mail.tapes.rs.gov.br (mail.tapes.rs.gov.br [168.205.176.158])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 73DA342245
 for <devel@driverdev.osuosl.org>; Wed, 15 Nov 2023 16:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.tapes.rs.gov.br (Postfix) with ESMTP id B050FB856E48C;
 Tue, 14 Nov 2023 23:30:14 -0500 (EST)
Received: from mail.tapes.rs.gov.br ([127.0.0.1])
 by localhost (mail.tapes.rs.gov.br [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 7jInC8SaPpqA; Tue, 14 Nov 2023 23:30:14 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by mail.tapes.rs.gov.br (Postfix) with ESMTP id DACDCB92C2658;
 Tue, 14 Nov 2023 03:28:56 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tapes.rs.gov.br DACDCB92C2658
X-Virus-Scanned: amavisd-new at pmtapes.com.br
Received: from mail.tapes.rs.gov.br ([127.0.0.1])
 by localhost (mail.tapes.rs.gov.br [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id CNMtzkhL5DGi; Tue, 14 Nov 2023 03:28:56 -0500 (EST)
Received: from [192.168.1.152] (unknown [45.88.222.43])
 by mail.tapes.rs.gov.br (Postfix) with ESMTPSA id E1A6EB8BF34CE;
 Mon, 13 Nov 2023 20:32:17 -0500 (EST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?4oKsIDEwMC4wMDAuMDAwPw==?=
To: Recipients <vacina@tapes.rs.gov.br>
From: Joanna Liu <vacina@tapes.rs.gov.br>
Date: Tue, 14 Nov 2023 02:32:08 +0100
Message-Id: <20231114013218.E1A6EB8BF34CE@mail.tapes.rs.gov.br>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tapes.rs.gov.br; 
 s=E94C2580-EB13-11EC-BE8E-9DBF4A5712E0; t=1699950537;
 bh=WOZURJ77pkiMUL2pPLC14ifVPRvyTQIBEQmxuN1ezAA=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=h1WTMV89k4vOmmaJ1XRkCDcBhaKpHKlCvHIsN6/oIc3MfT3i9LnA5PIZ0S1skfT76
 GpPL8KADZw+2SkKEAwlgt09OMtTnNAwLOvueRH1uikcK0tpHP8IcC67qj0ndurKYLI
 5mwZ68mNhuOPAv5LP9SlH+2Kq3Il+H5O1ewDj9Om96KErRgv8xuzz2EsSgqBp2JXMP
 OGJSeewLo31i7oEdvhLdG3uoJ9qM7/HxR9sGXJJtqjBf8tJgF10QoXDmgtK/zV6fSJ
 wvXJsaM7JSS74NMmBJb18/jI/87YTi7fWu9szigK4iTmH7cf517nL2Jbf12C+xf+A2
 ndH8MIY07IaXg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=tapes.rs.gov.br header.i=@tapes.rs.gov.br
 header.a=rsa-sha256 header.s=E94C2580-EB13-11EC-BE8E-9DBF4A5712E0
 header.b=h1WTMV89
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
Reply-To: joliushk@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29lZGVkYWcsCklrIGJlbiBtZXZyb3V3IEpvYW5uYSBMaXUgZW4gZWVuIG1lZGV3ZXJrZXIgdmFu
IENpdGkgQmFuayBIb25nIEtvbmcuCkthbiBpayDigqwgMTAwLjAwMC4wMDAgYWFuIHUgb3Zlcm1h
a2VuPyBLYW4gaWsgamUgdmVydHJvdXdlbgoKCklrIHdhY2h0IG9wIGp1bGxpZSByZWFjdGllcwpN
ZXQgdnJpZW5kZWxpamtlIGdyb2V0ZW4KbWV2cm91dyBKb2FubmEgTGl1Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

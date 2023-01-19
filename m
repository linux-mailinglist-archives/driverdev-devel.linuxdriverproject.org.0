Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00671673416
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Jan 2023 10:00:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C315940C34;
	Thu, 19 Jan 2023 09:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C315940C34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G2sRK3yfSsRl; Thu, 19 Jan 2023 09:00:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA354404EF;
	Thu, 19 Jan 2023 09:00:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA354404EF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1293A1BF475
 for <devel@linuxdriverproject.org>; Thu, 19 Jan 2023 09:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF09A4191E
 for <devel@linuxdriverproject.org>; Thu, 19 Jan 2023 09:00:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF09A4191E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KtUBdPNwnTqr for <devel@linuxdriverproject.org>;
 Thu, 19 Jan 2023 09:00:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07FEF418FE
Received: from mail.celldrum.pl (mail.celldrum.pl [192.71.213.46])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07FEF418FE
 for <devel@driverdev.osuosl.org>; Thu, 19 Jan 2023 09:00:01 +0000 (UTC)
Received: by mail.celldrum.pl (Postfix, from userid 1001)
 id 5E6D242A72; Thu, 19 Jan 2023 09:59:39 +0100 (CET)
Received: by mail.celldrum.pl for <devel@driverdev.osuosl.org>;
 Thu, 19 Jan 2023 08:58:51 GMT
Message-ID: <20230119083002-0.1.5p.8z4j.0.w9e0jgpkcf@celldrum.pl>
Date: Thu, 19 Jan 2023 08:58:51 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Kamieniecki"?= <pawel.kamieniecki@celldrum.pl>
To: <devel@driverdev.osuosl.org>
Subject: Prezentacja
X-Mailer: mail.celldrum.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=celldrum.pl; s=mail; 
 t=1674118798; bh=L9MaVcgJQNU45xvlWi+RdqvfUk7sPEb4wFjeNQOGJzM=;
 h=Date:From:To:Subject:From;
 b=wfJ5E7uV3ukSi5JDqfrz3znRfM8x9y9niEKaGu0CtgGsXxB4bXAImRYtBanuPF2Td
 IQcrvBuYxHJGqqK+1lTEcjmwUStC9jQi5SS9M0qNpkZbMglFWM6yBRB+DWtzbK/Pl/
 BhNGtSMCXA+/uA2QN4EWhuXhFHp866Js6hiUyfcWkAhk2mGytfxiSECe1Hl3wSMnV0
 1ZgTHRt+RiKUSTe48yC/G2tROxIG1j6/Y2Jv6I461aKL77VrA2lG2sGXtAyWa+wNO0
 pnuZQEwz93vq8/qF1xk7dmUYNjBGGFPB57e1pSXeLYU8cQ2HgdI78KOvs66EHM/sSs
 71pZYZhisXt4A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=celldrum.pl header.i=@celldrum.pl
 header.a=rsa-sha256 header.s=mail header.b=wfJ5E7uV
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

RHppZcWEIGRvYnJ5IQoKQ3p5IG3Ds2fFgmJ5bSBwcnplZHN0YXdpxIcgcm96d2nEhXphbmllLCBr
dMOzcmUgdW1vxbxsaXdpYSBtb25pdG9yaW5nIGthxbxkZWdvIGF1dGEgdyBjemFzaWUgcnplY3p5
d2lzdHltIHcgdHltIGplZ28gcG96eWNqxJksIHp1xbx5Y2llIHBhbGl3YSBpIHByemViaWVnPwoK
RG9kYXRrb3dvIG5hc3plIG5hcnrEmWR6aWUgbWluaW1hbGl6dWplIGtvc3p0eSB1dHJ6eW1hbmlh
IHNhbW9jaG9kw7N3LCBza3JhY2EgY3phcyBwcnplamF6ZMOzdywgYSB0YWvFvGUgdHdvcnplbmll
IHBsYW51IHRyYXMgY3p5IGRvc3Rhdy4KClogbmFzemVqIHdpZWR6eSBpIGRvxZt3aWFkY3plbmlh
IGtvcnp5c3RhIGp1xbwgcG9uYWQgNDkgdHlzLiBLbGllbnTDs3cuIE1vbml0b3J1amVteSA4MDkg
MDAwIHBvamF6ZMOzdyBuYSBjYcWCeW0gxZt3aWVjaWUsIGNvIGplc3QgbmFzesSFIG5hamxlcHN6
xIUgd2l6eXTDs3drxIUuCgpCYXJkem8gcHJvc3rEmSBvIGUtbWFpbGEgendyb3RuZWdvLCBqZcWb
bGkgbW9nbGliecWbbXkgd3Nww7NsbmllIG9tw7N3acSHIHBvdGVuY2phxYIgd3lrb3J6eXN0YW5p
YSB0YWtpZWdvIHJvendpxIV6YW5pYSB3IFBhxYRzdHdhIGZpcm1pZS4KCgpQb3pkcmF3aWFtClBh
d2XFgiBLYW1pZW5pZWNraQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8824B9CA0
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Feb 2022 10:59:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14E9B4019A;
	Thu, 17 Feb 2022 09:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wYC2ig2dM_z3; Thu, 17 Feb 2022 09:59:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AE4340143;
	Thu, 17 Feb 2022 09:59:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CED41BF20B
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 09:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A9B44176F
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 09:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X7Ea1EyI2jZA for <devel@linuxdriverproject.org>;
 Thu, 17 Feb 2022 09:59:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7986A41764
 for <devel@driverdev.osuosl.org>; Thu, 17 Feb 2022 09:59:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4F09661D50;
 Thu, 17 Feb 2022 09:59:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 813D4C340E8;
 Thu, 17 Feb 2022 09:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645091971;
 bh=kf4nnFyves4ytQtR0uAhDYL4Y82jWry/eJ/Oy/50d9g=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=aoR51P4HeOo98AzfA1TapyB9YI7tT3P9ywfw+wXKzjpii0A8E2uzQ2MVDBynYaq4T
 TUaIW3z7dtG/pn3asWhT2WgjRrzUN/imlwFmrGPoyLGX0PCueTQJ2Cu4W2bsS8JefE
 bFPfsTeez2m/81fUye372Xx2vtFL1ZDGKt2p9h1UoJ1eO65zyvtq0UlnUQ82Fcm7xy
 4c3F4yf8o20kLpgaPy/FlYlRY98+eUR9WrGOjLl4WlVYUibSm1GH0lkzJvnCemM2HR
 DJRJYbXLUWKRW7fSl9OpPRk/7QqYZxU9zMFcs/gTEQ2G0Ea8M//whaCAyzJZn+Nvsa
 vE0+yNEG4LIfg==
From: Kalle Valo <kvalo@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 2/2] staging: wfx: apply the necessary SDIO quirks for the
 Silabs WF200
References: <20220216093112.92469-1-Jerome.Pouiller@silabs.com>
 <20220216093112.92469-3-Jerome.Pouiller@silabs.com>
Date: Thu, 17 Feb 2022 11:59:24 +0200
In-Reply-To: <20220216093112.92469-3-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Wed, 16 Feb 2022 10:31:12 +0100")
Message-ID: <878ru924qr.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Ulf Hansson <ulf.hansson@linaro.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBV
bnRpbCBub3csIHRoZSBTRElPIHF1aXJrcyBhcmUgYXBwbGllZCBkaXJlY3RseSBmcm9tIHRoZSBk
cml2ZXIuCj4gSG93ZXZlciwgaXQgaXMgYmV0dGVyIHRvIGFwcGx5IHRoZSBxdWlya3MgYmVmb3Jl
IGRyaXZlciBwcm9iaW5nLiBTbywKPiB0aGlzIHBhdGNoIHJlbG9jYXRlIHRoZSBxdWlya3MgaW4g
dGhlIE1NQyBmcmFtZXdvcmsuCgpJdCB3b3VsZCBiZSBnb29kIHRvIGtub3cgaG93IHRoaXMgaXMg
YmV0dGVyLCB3aGF0J3MgdGhlIGNvbmNyZXRlCmFkdmFudGFnZT8KCi0tIApodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlzdC8KCmh0dHBzOi8vd2ly
ZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0
aW5ncGF0Y2hlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK

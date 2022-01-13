Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED06A48D6EE
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jan 2022 12:50:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F8B8409EE;
	Thu, 13 Jan 2022 11:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPZ-dvrPNJc0; Thu, 13 Jan 2022 11:50:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6444C4017C;
	Thu, 13 Jan 2022 11:50:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C58A41BF350
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 11:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B33524167B
 for <devel@linuxdriverproject.org>; Thu, 13 Jan 2022 11:50:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fyhI4YQY1uII for <devel@linuxdriverproject.org>;
 Thu, 13 Jan 2022 11:50:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D901C41679
 for <devel@driverdev.osuosl.org>; Thu, 13 Jan 2022 11:50:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B363A618AC;
 Thu, 13 Jan 2022 11:50:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F2D2C36AE9;
 Thu, 13 Jan 2022 11:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642074629;
 bh=5f0a/xRY41Y6k3AVP6APcWpAYz/w3ntzIrhp4l6IuEc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=eIefB+vQ9n5nU42IW8t1/J4YrhdpbXA0kvRFzSkdRmB7OiCen0U91Dj9hZJhY/bMc
 6jQZ6d8cBx2qR3Kf4fLezo6Jotu34w7SHPKnIX5YUV/+qaxd5RN1wnp//hA7zyFM+u
 2zEEEePvXzjegrnpy77rXhwzABsc2SL+v4ML7y7Zx01MeEuaIVxbQfa33NrG3YmyQV
 //W8ZV43PwLYNh39Z4PPmQ4iol1FpkkhZNdlh1vQ4kUkFgQsJJvXoE1mB92JVPOAYb
 KbKEEHC/9Gp3f4nXHm5y+pyFpc42GycXlLuhALg5Um1lOXQm55AXXtT5dV9gwgb3tt
 BjmYnYTQM5VoQ==
From: Kalle Valo <kvalo@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 02/31] staging: wfx: fix HIF API license
References: <20220113085524.1110708-1-Jerome.Pouiller@silabs.com>
 <20220113085524.1110708-3-Jerome.Pouiller@silabs.com>
Date: Thu, 13 Jan 2022 13:50:23 +0200
In-Reply-To: <20220113085524.1110708-3-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Thu, 13 Jan 2022 09:54:55 +0100")
Message-ID: <877db3ua68.fsf@kernel.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBB
cGFjaGUtMi4wIGlzIG5vdCBhbGxvd2VkIGluIHRoZSBrZXJuZWwuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9jbWQuaCAgICAgfCAyICstCj4gIGRyaXZlcnMv
c3RhZ2luZy93ZngvaGlmX2FwaV9nZW5lcmFsLmggfCAyICstCj4gIGRyaXZlcnMvc3RhZ2luZy93
ZngvaGlmX2FwaV9taWIuaCAgICAgfCAyICstCj4gIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvaGlmX2FwaV9jbWQuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9jbWQuaAo+IGlu
ZGV4IGIwYWExM2IyM2E1MS4uYjE4MjlkMDFhNWQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy93ZngvaGlmX2FwaV9jbWQuaAo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2Fw
aV9jbWQuaAo+IEBAIC0xLDQgKzEsNCBAQAo+IC0vKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
QXBhY2hlLTIuMCAqLwo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5
IG9yIEFwYWNoZS0yLjAgKi8KCklzIHRoZSBBcGFjaGUtMi4wIGxpY2Vuc2UgcmVhbGx5IG1hbmRh
dG9yeT8gTElDRU5TRVMvZHVhbC9BcGFjaGUtMi4wIGlzCm5vdCByZWFsbHkgc3VwcG9ydGl2ZS4K
Ci0tIApodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3Mv
bGlzdC8KCmh0dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9j
dW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

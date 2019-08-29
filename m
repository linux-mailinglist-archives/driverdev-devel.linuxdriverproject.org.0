Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22048A1F8B
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 17:45:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C368B88C52;
	Thu, 29 Aug 2019 15:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Mx8F6qa9pqM; Thu, 29 Aug 2019 15:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46C67885CB;
	Thu, 29 Aug 2019 15:45:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 095D31BF487
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 059DF25BD3
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3NU0TxBgpGuf for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 15:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.15.4])
 by silver.osuosl.org (Postfix) with ESMTPS id A49C025A3A
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 15:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567093501;
 bh=bXJWF3tk3i4nXE+uokgXyj7lI9V3sCZKNmOFOxiGkHo=;
 h=X-UI-Sender-Class:To:Cc:References:Subject:From:Date:In-Reply-To;
 b=sOKrqC4bueOJXvz3mC5dNvtMiU5Fsg5iByTtkLq2uEEkxdqc2wNKv3z6i3mjsTfIZ
 dWuaFhYOhdRFvnn0uS96Fx5pRw3rslKNFcAa6Xc/XUDBF5jCkpHeaU6rGBwOspvYIC
 dspUI8WKKpntphU/eYdleZtUn5ipkhXy+YEAChaw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.172.157]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0McnaL-1hlQDN3hNR-00Hze7; Thu, 29
 Aug 2019 17:45:01 +0200
To: devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?Q?Valdis_Kl=c4=93tnieks?= <valdis.kletnieks@vt.edu>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <d5c289ef-6c5c-ecdc-0e73-c5bd410b3d26@web.de>
Date: Thu, 29 Aug 2019 17:44:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828160817.6250-1-gregkh@linuxfoundation.org>
Content-Language: en-US
X-Provags-ID: V03:K1:SiioPfBZvgue4c8y1oMvSjEly2OccD75gLWn2AXYvJSCoSbrafc
 MAod5N8SDEBFEGx4E+K4cBKMwLm1xN2wY7tApjfosA0W73LAgxYAAFprnLZrsglijuIBkzI
 ZtpAtsAwF7AmwON+VSc/4trDy3TP/1NNTfKpP5BVXf+PCfFnwtd5GSCq90GFq8C414CZ/8g
 7MIa58axNya8lYQbDPm5w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ihi8zAPp8Qc=:VOZXQt4thrAHwgY/ANnzAZ
 Yqmdu7z09Fkz4wpGd0JFFxmn1wPUT2XsQpw+b8eGin7YHfbMtmtlRuKClqXNWMcY8I8Dyb+rH
 P7u/N0N+uvnI2ecTFPgs9BCmFBea0e7OQqWfOjQWcqZYC06W0mh0qfcw2+RtkpS4xEW2XF1Hr
 7KkeFzoIwwzEDdNMpFYxF5HFtQ5uHSMQLzGPWWzBvLDTMqG2XesJ8amRQjX+EXRdfiIR3xQMj
 vUMzZJhcEgMqyJxgXnaJ+KAPeYsvSXC5TBHekRhkd0FRbg01DjfslijRkeIvbxmaDteJhA2ey
 0V1l0Q+P8W8ec+LKly8C+8aoy/t1AVExesKCXiKYJcmwkaghGkU9DTf91VLavNMCEBP/mjbrf
 FWnDnv0vCukYpeD8vgJdtehkz3pGsWbkvR8LxvSoYdDKWvfUlkQNI683EQ7xIZlfm1LBm1rBQ
 X0oyyYcceZ9sZG/y0pIDXY4Kp1RuaxtcMMRZXizH0c7lPMzzB+Lj90QOF6tCBT/G9UOJe8Tok
 2n1QYOI5vxKqsukjxzXEl/FpEoDTVJdIPuJal+A/Bhak9b9YRfoHA5WrVXUGDSIVYt1CeEs+L
 swO8Wh0LZjUkcOsgJQd0FQNUJP/etOJvtqfSYQ45+t+YfEz1u3NwsDjRVMhRvzoQ2eWTELh2p
 3qpufflpXvnOmQmybLg56/E+P2OA7siHCqhLvyU9VGtliKp98D26nUgCfyzoK/mUpgZvIsu80
 9otQyZ/0v6zDsD0/7s8age/pxbMZshPN3WULsob3QJRew/0Gm1MJhSN246z6AXIPsRebE2EkW
 y0ZzfssO7727K+G2scgQpAzKyxeWcaIU2wWdc5BW/VEYV0/V95TUWTQSe93kANaLhVFgCY4Ot
 Igzw/v8Vg9xnmHSIn5v83fm2RKXDfoOcgMJpyOmuwl6GfAA1ii4AhGcPWTVZO5B6rIYolPRjR
 ciuzv8bDlrQwk9vBW8pP2u6ZjQ8RXJkgJueYsP7jjdyau4/vOOtk6y5fOp/03uFTk2o/whDN+
 RsE/prG3XhFsBqeuzWDABCVb3VX3IAk4C3mU/VCmhPoyoKutKuLz3dos+js1n45H9cXIxpEjC
 dv9MLrtnyJkKmch3SAGk/hYSQR7wdesKthRlHAd5REyHiF2+FUx1+uojRgQ//fPDIIEqL9P1S
 LMO5N7TqzLZMhpmJdwznSeEjJufWKCd4EewLGr3q/OLilHhw==
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvZXhmYXQvZXhmYXRfY29yZS5jCj4gQEAgLTAsMCArMSwz
NzA0IEBACuKApgo+ICtzdGF0aWMgczMyIF9fbG9hZF91cGNhc2VfdGFibGUoc3RydWN0IHN1cGVy
X2Jsb2NrICpzYiwgc2VjdG9yX3Qgc2VjdG9yLAo+ICsJCQkgICAgICAgdTMyIG51bV9zZWN0b3Jz
LCB1MzIgdXRibF9jaGVja3N1bSkKPiArewrigKYKPiArZXJyb3I6CgpBbiBvdGhlciBsYWJlbCB3
b3VsZCBiZSBuaWNlciwgd291bGRuJ3QgaXQ/CgoKPiArCWlmICh0bXBfYmgpCj4gKwkJYnJlbHNl
KHRtcF9iaCk7CgpUaGlzIGlubGluZSBmdW5jdGlvbiB0b2xlcmF0ZXMgdGhlIHBhc3Npbmcgb2Yg
bnVsbCBwb2ludGVycy4KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvaW5jbHVkZS9saW51eC9idWZmZXJfaGVhZC5o
P2lkPTljZjZiNzU2Y2RmMmNkMzhiOGIwZGFjMjU2N2Y3YzZkYWY1ZTc5ZDUjbjI5MgpodHRwczov
L2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4zLXJjNi9zb3VyY2UvaW5jbHVkZS9saW51eC9i
dWZmZXJfaGVhZC5oI0wyOTIKClRodXMgSSBzdWdnZXN0IHRvIG9taXQgdGhlIGV4dHJhIHBvaW50
ZXIgY2hlY2sgYXQgYWZmZWN0ZWQgcGxhY2VzLgoKCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL2V4
ZmF0L2V4ZmF0X3N1cGVyLmMKPiBAQCAtMCwwICsxLDQxMzcgQEAK4oCmCj4gKy8vIEZJWE1FIHVz
ZSBjb21tZW50ZWQgbGluZXMKPiArLy8gc3RhdGljIGludCBleGZhdF9kZWZhdWx0X2NvZGVwYWdl
ID0gQ09ORklHX0VYRkFUX0RFRkFVTFRfQ09ERVBBR0U7CgpJcyBzdWNoIGluZm9ybWF0aW9uIHN0
aWxsIHJlbGV2YW50IGFueWhvdz8KCgo+ICtzdGF0aWMgaW50IGV4ZmF0X2ZpbGxfc3VwZXIoc3Ry
dWN0IHN1cGVyX2Jsb2NrICpzYiwgdm9pZCAqZGF0YSwgaW50IHNpbGVudCkKPiArewrigKYKPiAr
b3V0X2ZhaWw6Cj4gKwlpZiAocm9vdF9pbm9kZSkKPiArCQlpcHV0KHJvb3RfaW5vZGUpOwoKSSBh
bSBpbmZvcm1lZCBpbiB0aGUgd2F5IHRoYXQgdGhpcyBmdW5jdGlvbiB0b2xlcmF0ZXMgdGhlIHBh
c3NpbmcKb2YgbnVsbCBwb2ludGVycy4KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZnMvaW5vZGUuYz9pZD05Y2Y2
Yjc1NmNkZjJjZDM4YjhiMGRhYzI1NjdmN2M2ZGFmNWU3OWQ1I24xNTY0Cmh0dHBzOi8vZWxpeGly
LmJvb3RsaW4uY29tL2xpbnV4L3Y1LjMtcmM2L3NvdXJjZS9mcy9pbm9kZS5jI0wxNTY0CgpUaHVz
IEkgc3VnZ2VzdCB0byBvbWl0IHRoZSBleHRyYSBwb2ludGVyIGNoZWNrIGFsc28gYXQgdGhpcyBw
bGFjZS4KClJlZ2FyZHMsCk1hcmt1cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK

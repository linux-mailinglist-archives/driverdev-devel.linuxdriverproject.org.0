Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2786E14A2F3
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 12:23:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E74E785ADB;
	Mon, 27 Jan 2020 11:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pKlEnT6TExA6; Mon, 27 Jan 2020 11:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 668558573E;
	Mon, 27 Jan 2020 11:23:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 380091BF3CA
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 11:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2E49587590;
 Mon, 27 Jan 2020 11:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMVKXx+xENE8; Mon, 27 Jan 2020 11:23:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 05953874E4;
 Mon, 27 Jan 2020 11:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1580124208;
 bh=pFg0c4+RDKrHq6rIi7g2NieDtv74mqOryv/2SEQrOTE=;
 h=X-UI-Sender-Class:Cc:Subject:From:To:Date;
 b=XeUZAgkgW2PTQWJEuoGtV/bh5CxZPDU6rBOJP0UMBqaVc/Ua26rVSMEDIkJGsXDAF
 B7XNRDNJ41h5TXuECGlGKfVOJ8+sS/zzlnj7G9I3MwuGbN75FPwVmV9PRTHdfYEhS6
 gupzMJGucXg9jb2IcbT5ZqKt9zWH0TK/rWDY7pvg=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.131.115.58]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LoYX0-1jWlDO1ODS-00gZGm; Mon, 27
 Jan 2020 12:23:28 +0100
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_00/22=5d_staging=3a_exfat=3a_Fix_checkpatc?=
 =?UTF-8?B?aCB3YXJuaW5nOiDigKY=?=
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
To: Pragat Pandya <pragat.pandya@gmail.com>, devel@driverdev.osuosl.org,
 linux-fsdevel@vger.kernel.org
Message-ID: <130232ad-ec3c-daae-4bcc-a0b896a1a96d@web.de>
Date: Mon, 27 Jan 2020 12:23:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:45vEwlej7txwJqTTx+4IWdY3AElXwnlYrbkfl6XuOE1HF1piSZK
 5Bq2GCsA9jhMSjRsJxuQ6HcJhIPQL6zgBUywiXa+HPHy0STEPy1E4OtYdDlwWivEDpVu235
 P8qm5FNhL50gBPrJ0YTWviHWMY43xBfnMAEH53dA5mHsc05dWIWV/p6jBrchRY87Lniu7ow
 +UwJbSYSEPYKDCZWPkCoA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:wZkkJULRNEA=:AsRVyepb81tjoqfnVw1XJd
 +u4R3mpUWyj0U/ardyhtWwp6VQVHdiCZzHKYuBg9RySUvpz0nV1aVUEovqWTbWP+PNdhBUNaO
 MXf3KhSGaEenVLIwyejmCNQDUX4UbTN1COS+viS9g8ze7TUl/ep9A4zUVGc4hSQ857c2g4FbD
 YT7Sz9YlEdx0UFrJz6r7VF+b8P02W4PiCiFD78Oi3/I3paOtVM+R3SQPBfFF2/KqCKt3mRMW9
 bWRWr09wpTbtx1qHvP1auxb3/KzcRtuKK3z+Av4NmiT8o7NETX/VGryOD+tSuN0Hs7N6ATi7p
 uq6ncSWTiCwizU6XouO5raVx2zatwMUvT4SECIZRniIxUzQOTce1hMtwTPEzKQRHP0Ivi/tOx
 bn11sX75XR3Guib1yjpvcIPy9wRDlGiOQPQ7Yf5Hq98MXPNB46crZRQZIQ/ttwgq4Ok/pEuIU
 haRRxtAc+rIWvGCxujJhLigw7feDu7RZ4jv/mtkTmru40fnJjpLKsL9qwC7nP1X/ALKn1dlyW
 6Lc8K83gwZb0hEjch/0YMLuU4Rqsp0ayJgV35LToiNNjnIfWH9yBAMIYRPGeBc3Z2+Y+Z21uS
 xWVXr6dvaG5OZ2ZQu+jV2X28mlMyiRTqXOo+liOOXDdNTw90GmhYLaUt2ydGwEVshQr8weqz0
 NlWlgLlAt2FfvK+17VOC02jRa15BnDFySpmSmwk/6+ydfkpNpv8/PXB4M8KBYiG09MoUK8Vr2
 t6vVDMNqj0DoRndRNN7lpKaG212sd7VJRgwCKvDUTizJ7hv6KuHrck69umq207YR8F9zkQIPi
 LycFjCgqsT/lA7Ve5Eu89fD3E8S2g5ZGLN5NMR4Extc3sEukEGlOJNKThGt4LtcndiVfN4hcC
 /lVfI7oAbexc/toJoYIn0eZsDoawgQxb7W+lti17e5u6krQ6iJr00ToQbfU1Ry+58Ih7Iutei
 1N5HJTTjljgFxUaeS+YKHnU3mXO9LEHbDM15S10VPGJYOvO0y991zth6RQ9ut+HLlXZkekEWW
 XLhuob3ojeiTSLBpPHOK7FxnfvhLExoWNIRmENv0wNSnctO6qyeLl99zQN5O1lzBcAPi5Ijw5
 116oqWeOcOHbxeSh3M61uXdermKQWH/cl2s1AoDY/qh9bmVknyMrj5/yCRSFwY3v621Th7e2f
 xV5B8JAVOwUTgK7ZxOiUzYD+MmkIg+0wGic7Nb0sxnzsS9COlBepVGRtd3LbXZJ620SpXExQk
 4ljeI1QcLy0FmvVph
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Valdis_Kl=c4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

PiBUaGlzIHBhdGNoc2V0IHJlbmFtZXMgZm9sbG93aW5nIHR3ZW50eS10d28gdmFyaWFibGVzIGRl
Y2xhcmVkIGluIGV4ZmF0LmgKCldvdWxkIGEgc3ViamVjdCBsaWtlIOKAnHN0YWdpbmc6IGV4ZmF0
OiBSZW5hbWluZyBvZiBzb21lIGlkZW50aWZpZXJz4oCdCmJlIG1vcmUgYXBwcm9wcmlhdGUgKHRo
YW4gYW4gaW5jb21wbGV0ZSBvbmUpIGZvciB0aGlzIGNvdmVyIGxldHRlcj8KClJlZ2FyZHMsCk1h
cmt1cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK

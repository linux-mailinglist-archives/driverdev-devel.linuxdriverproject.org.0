Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 219E433DC98
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 19:31:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D726E4ECA3;
	Tue, 16 Mar 2021 18:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fss8gsCc7muE; Tue, 16 Mar 2021 18:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D21C44EC16;
	Tue, 16 Mar 2021 18:31:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71FDC1BF95A
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 18:30:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60CAC83A96
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 18:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5OWiTw-1nkm3 for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 18:30:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B2A1F83A93
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 18:30:54 +0000 (UTC)
Received: from mail-ot1-f43.google.com ([209.85.210.43]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MCXhr-1lVp7f1Azz-009eMa for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021
 19:30:52 +0100
Received: by mail-ot1-f43.google.com with SMTP id l11so6013556otq.7
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:30:51 -0700 (PDT)
X-Gm-Message-State: AOAM5339ERoIwt/41JgqPBfmRD1qh5D6bwvJ9aA3Or5BIWp2ZCBF6MZb
 7kLPO9IFJCj+nMuQM/8ms12WDmUt3imrvl54kJ0=
X-Google-Smtp-Source: ABdhPJy7zf/nwXCQeopMtr6VLSjP61d4PF+is99tvboBdN67xZV3noxqUb+4ubWjTpASNmkEsYVdKhVcDoCNuseYwho=
X-Received: by 2002:a05:6830:14c1:: with SMTP id
 t1mr78328otq.305.1615919450777; 
 Tue, 16 Mar 2021 11:30:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210316181736.2553318-1-eantoranz@gmail.com>
In-Reply-To: <20210316181736.2553318-1-eantoranz@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 16 Mar 2021 19:30:34 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0aBauNqKRyzZ6d4kPGBPcMYqWUWrmmLXwbROFLkBf0nw@mail.gmail.com>
Message-ID: <CAK8P3a0aBauNqKRyzZ6d4kPGBPcMYqWUWrmmLXwbROFLkBf0nw@mail.gmail.com>
Subject: Re: [PATCH] staging: vt665x: fix alignment constraints
To: Edmundo Carmona Antoranz <eantoranz@gmail.com>
X-Provags-ID: V03:K1:Nlro1iZfurTuKLz/H2zVJHlKzotP5rokxGZZuQKKxQVHS3j0vKg
 BQ/H78RodRosbQN0aXXIZNfPX5MBHZxFhvV/ruAeTsMrICoLwSnuC7T1drlYEFH1YQ8Dgtr
 9ko01E17as7NAl2sYvZ3ahc0PDsY21QQNsLhmBIqr/7bD4CGJyldWgpW3gjnxAj0nfLmX+I
 jNJx5ub0A8P1aLrrwvu5Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:XoWvKyIvQSI=:T8LPpRTA9dOjW7R3l5sOXo
 jgX7DZBK+TVCRIl55vWHMv6N3AsWyQ8rbeje//4hPzWlnVUKh58xrq0jvDDNm78wPUyTi6vRX
 3GwLGHJqxDcc4uyyToKlsP4uYZdB8efd/VPUHEf8MyhwnV2HiedC/W2wRH8FhT22hIj244gpE
 diXH4dX0AHz3YNmwo1pucAawDiJRb6BF1LgX3vbD1qgInRM1HJ556cCTCB4bjm/WB8KH/Zp0S
 wXE300WvvKqO2IOAovOL6Map7XqiMdWk2h2ORwS/Qxqs3I7KLb4P6zm28/nF4sx+8/+vEkjK/
 ZXIkrbSIyl8cmYcia/Yxv6FyDaC47W+yTqLpK3VBAtg+b+KVlVEi13HIgOxX32R9O5zoOe51V
 KKFxPAvTP0l2xRx9hZnNyGiNbmwhWrlLaxlc6Ruaj5QgDy8KWYiPih/3nK0PQ
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 gregkh <gregkh@linuxfoundation.org>, kernel-janitors@vger.kernel.org,
 forest@alittletooquiet.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBNYXIgMTYsIDIwMjEgYXQgNzoxNyBQTSBFZG11bmRvIENhcm1vbmEgQW50b3JhbnoK
PGVhbnRvcmFuekBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gUmVtb3ZpbmcgMiBpbnN0YW5jZXMgb2Yg
YWxpZ25tZW50IHdhcm5pbmdzCj4KPiBkcml2ZXJzL3N0YWdpbmcvdnQ2NjU1L3J4dHguaDoxNTM6
MTogd2FybmluZzogYWxpZ25tZW50IDEgb2Yg4oCYc3RydWN0IHZudF9jdHPigJkgaXMgbGVzcyB0
aGFuIDIgWy1XcGFja2VkLW5vdC1hbGlnbmVkXQo+IGRyaXZlcnMvc3RhZ2luZy92dDY2NTUvcnh0
eC5oOjE2MzoxOiB3YXJuaW5nOiBhbGlnbm1lbnQgMSBvZiDigJhzdHJ1Y3Qgdm50X2N0c19mYuKA
mSBpcyBsZXNzIHRoYW4gMiBbLVdwYWNrZWQtbm90LWFsaWduZWRdCj4KPiBUaGUgcm9vdCBjYXVz
ZSBzZWVtcyB0byBiZSB0aGF0IF9iZWNhdXNlXyBzdHJ1Y3QgaWVlZTgwMjExX2N0cyBpcyBtYXJr
ZWQgYXMgX19hbGlnbmVkKDIpLAo+IHRoaXMgcmVxdWlyZXMgYW55IGVuY2Fwc3VsYXRpbmcgc3Ry
dWN0IHRvIGFsc28gaGF2ZSBhbiBhbGlnbm1lbnQgb2YgMi4KPgo+IEZpeGVzOiAyZmFmMTJjNTdl
ZmUgKCJzdGFnaW5nOiB2dDY2NXg6IGZpeCBhbGlnbm1lbnQgY29uc3RyYWludHMiKQo+IFNpZ25l
ZC1vZmYtYnk6IEVkbXVuZG8gQ2FybW9uYSBBbnRvcmFueiA8ZWFudG9yYW56QGdtYWlsLmNvbT4K
ClJldmlld2VkLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

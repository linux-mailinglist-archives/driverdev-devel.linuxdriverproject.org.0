Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06766C0936
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 18:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C5B3C22836;
	Fri, 27 Sep 2019 16:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YLrAK9QVUWHQ; Fri, 27 Sep 2019 16:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0B8F20478;
	Fri, 27 Sep 2019 16:10:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34AC61BF9AF
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 16:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2F10C8626B
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 16:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wNJpPCggvCQh for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 16:10:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.15.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6763481A16
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 16:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1569600551;
 bh=GUogOh8H6Ybdxg9DJxOO7ilZvn2P+/PQ98A+1Ekg91M=;
 h=X-UI-Sender-Class:Cc:References:Subject:To:From:Date:In-Reply-To;
 b=fM474+EPPSv3J5PCGGFWYn4Gr8yu6XrMPfxDnPxbp3kKDCZ1k4vPM3fWVsdE9Iybd
 pHTQFtVqy6TPzXGZOdd3uDRTVSU2+RS9bWgEnKop4WYdWFE0j69Sh3yI+Q7RS+Whl8
 OsT2A3wLDDY90/OXihyrtLVT82zDWOB4/JQ69PNM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.133.191.8]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lj2XW-1hayoj1IQ2-00dGkc; Fri, 27
 Sep 2019 18:09:11 +0200
References: <20190920025137.29407-1-navid.emamdoost@gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: fix multiple memory leaks on error path
To: Navid Emamdoost <navid.emamdoost@gmail.com>, devel@driverdev.osuosl.org
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <02e4032a-d5f4-abfc-1d71-6a8d50554e40@web.de>
Date: Fri, 27 Sep 2019 18:09:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20190920025137.29407-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:150Ei1dyZJkRq9XkcFJJGSjiXCGHZYR2AZW2AulnshwQyk2kKSU
 iby5bePRlx3CP7EacDdgx+wTdOWe9ao2nrj71EBjHxQVLOkdJ5Zfcc/6sTo0/OfrKfDARv8
 38gUqLidN7LYv8d8NBus2p2PtMCGEZy739TsT1IiVNmISi2S31CrjNivD9piFDr8m1f6YVO
 +y2hCLvIzerRBGGyVqVBg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:NlQPDJV1WQ4=:m+rvrwDsdonLerf0nXraRN
 HKk5vg35hvy8ciirNdCgrZGOgAN2snwqMx6Wel/CQ5tPdGf8ncOPJTMqf968b5uwMjMTKJfmS
 az34En9XK0aAAHdEAJrl+a28wwk8+pieqswEQzEAkLo/yoyIScHMLGTkWzOf2/d0+7enGST5D
 Kf77zAXJoXuOtAzVneb32nXCrhj8+v6z7B+UpSVt8k7zbvbL4R5H1HY5T1fmz5FiiEhyTg1b1
 /DunESqxlzLsDZ2I52voKEoqiT4uLYqaHdmSLi4SBvV8p82ueIFmVDRGXp4G02Iqn2Wmt/9h+
 W8yti+IVf0nslpqfhA2cYcaP3A9V3oVPSKQlvwE84qbi9ZNZRFUKbdPXXsn4ecfaTBnFJZbXK
 aEwUf7TA80a+VMHKrb9tB/BltUPOk+qPi33WOc7oOa5fGC7CNX9XV7uyMmBR9kUCtjyVEyDiE
 +FkvHrOx8jvn52aJdo7SauHTOFRrdABZOzAEDq5Lc5tD9FbQj0AloIsYZaOPuC9qItY16In+B
 sVjifxb/4dLK9DIJ50+unDukr8nIGVhwtc8kJlBKxNFaTO2z2DKYFvLZJ5L2HqyvhKMR4TMmx
 kbPBXYL68oBbgKTm2EQ0aL8qdRFZwzx6tSHVTuV6dosiyQgLpZ19RNX5PfIlMWrkIu02TBNi6
 vlkhNUjRhhJVWa/HqJALnSiGb5M8HK6Fh46kcQDHuobdedcp0q0aRQBsONDZCP2FCERAPg4Hv
 MX+SQHgo8zer3yOAOeaQFCAhEoc9luJV9fPYsklUFNa9ZvLOv9Y0M1QLYfdRBCNXug8w/erBY
 VwNzRsesvWzqz9oVfgzZB5ljZkSVCvhJXQvi2SGwz9iyuEQJU9uvjC7U7V+XdxBrswBsbwKap
 jqGjLIzUwDfeslY9TT50x6o9GdUZz3yFSUjyMiLAh0wQ5tlGCO5FPw7UQNDUzhqFP5AGCTgQp
 owEDbPSAlLUz0PkvYcKUzKxfbc7jGRv/piN0aMeEktBu+QzT9FcyvlXzsTDsBnFvVqNHT4n92
 JOm9i2Q42sDCdzuSRcJzgoHSz7cIpMet7/SwD9aJy9DSIO43YJte8aW8nxWhzcIZIhJOXhiqV
 1C8MnTPSw9ViDAS72sQWXYGW36YlbPSCYd7WbJ+u0zFZXdNRNFzvetvYZfBuoraH1L2MB+mbL
 EqUtE3baNSbAf9+ERRnVFp5nrvhZGIFcmjFmxXYFE1tYXtMBZ7X71UjFtUTRpZCjV4IS+kVJd
 8btTnhbnpoe2R8OB377/1W8QdJmykLz0lVA8nw0/TFsBIjqwx/qfPEX77lZk=
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
Cc: kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kangjie Lu <kjlu@umn.edu>,
 linux-kernel@vger.kernel.org, Navid Emamdoost <emamd001@umn.edu>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Stephen A McCamant <smccaman@umn.edu>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

PiBJbiBydGw4MTkyX3R4IG9uIGVycm9yIGhhbmRsaW5nIHBhdGggYWxsb2NhdGVkIHVyYnMgYW5k
IGFsc28gc2tiIHNob3VsZAo+IGJlIHJlbGVhc2VkLgoKQ2FuIHRoaXMgY2hhbmdlIGRlc2NyaXB0
aW9uIGJlIGltcHJvdmVkPwoKCkhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdG8gYWRkIHRoZSB0YWcg
4oCcRml4ZXPigJ0gaGVyZT8KCgo+IEBAIC0xNTg4LDcgKzE1OTAsMTIgQEAgc2hvcnQgcnRsODE5
Ml90eChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+ICAJUlRf
VFJBQ0UoQ09NUF9FUlIsICJFcnJvciBUWCBVUkIgJWQsIGVycm9yICVkIiwKPiAgCQkgYXRvbWlj
X3JlYWQoJnByaXYtPnR4X3BlbmRpbmdbdGNiX2Rlc2MtPnF1ZXVlX2luZGV4XSksCj4gIAkJIHN0
YXR1cyk7Cj4gLQlyZXR1cm4gLTE7Cj4gKwo+ICtlcnJvcjoKPiArCWRldl9rZnJlZV9za2JfYW55
KHNrYik7CuKApgoKV291bGQgYW4gb3RoZXIgbGFiZWwgYmUgbW9yZSBhcHByb3ByaWF0ZSBhY2Nv
cmRpbmcgdG8gdGhlIExpbnV4IGNvZGluZyBzdHlsZT8KClJlZ2FyZHMsCk1hcmt1cwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

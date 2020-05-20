Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8211DAFE1
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 May 2020 12:15:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C2C9023426;
	Wed, 20 May 2020 10:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id arv1DIINA4+F; Wed, 20 May 2020 10:15:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 928811FEAE;
	Wed, 20 May 2020 10:15:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58D291BF48B
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 10:15:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 23AD122225
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 10:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U8PcUMO2ML6h for <devel@linuxdriverproject.org>;
 Wed, 20 May 2020 10:15:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 72E161FEAE
 for <devel@driverdev.osuosl.org>; Wed, 20 May 2020 10:15:48 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m18so2979755ljo.5
 for <devel@driverdev.osuosl.org>; Wed, 20 May 2020 03:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=A3jQcfTwH9hgQh8/O+gwx3D7oktbfMKBaopqhaIQ9pM=;
 b=laJRdkCg5aDI16TZ1iNoVJGsUFhWvSlm178lY/+RHopW12Q2J7mmdgB6w0g8cGTluo
 NyfqqZB/UFewKnqM9xNSZGvRlvJu3z4TraMkdnlMWjncZEJ08R6Z3wbMXpYg3UoZQRH3
 EJjLYMZuy3TgpaDDFi4PF4PjALVzyl6D+bZlGbd5Xmzug4suTqtw1ObsRh7oUZGE35Br
 mxtzAoz6z59+ay+Iy7DY6711RgTlSd2W9viHDU1k5G19rO3aEvRRWy2IuazDAZ6rcWSs
 M7YqPPj+3AsoEF4VWFI/qksCk/03a5tuMHNCpyo/CK9oQirN4egx6vO2szy6pnR0knSC
 C20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A3jQcfTwH9hgQh8/O+gwx3D7oktbfMKBaopqhaIQ9pM=;
 b=tG+8O1ISBgUqyy0YpdD6l+4YHaolpEpcfnz1rqFy2oFj1zOvePYNCYMxTbqhj/ErJX
 HzbrziluLspOkFDUzm5hC62t1dA4dgFkBUdHFfRQwdhqFzjjH3MivsVo8gBJpUuUfkSg
 NFGoNJabmunSlmqSfHZh6VXGV7nXKnCnCC43V3AqzLd0mCQuEfhk2nw9qmrSBqDbzVUD
 XVnp1HvbMyhz9bZLzOM+J/QWWUmw33bq4V8YX/IbQDGGk2nrLu5DN5rKKHnSOV45GTK4
 7fS8dEAWQ14pZAzewJmhC4syDFI+ZuHXqdYrVYskGEJ9jO0S+sNyjfB4mmJzpbhmX9s6
 zUDQ==
X-Gm-Message-State: AOAM533C8w8seisANLqqLOmGykFFtHbeUCpQokCmyZZycPhD9jlp+eil
 BywH1sRJ8ggEShsepg3v4ig=
X-Google-Smtp-Source: ABdhPJylLv5WcZffcN6CY6DHsMMWEVlMasl60xHsskEX1iigxx3HLyXQuuOF/A2C+wOMqTnRqvSxqg==
X-Received: by 2002:a2e:b891:: with SMTP id r17mr2455976ljp.58.1589969746390; 
 Wed, 20 May 2020 03:15:46 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id d22sm960520lfi.31.2020.05.20.03.15.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 03:15:45 -0700 (PDT)
Subject: Re: [PATCH] media: staging: tegra-vde: fix runtime pm imbalance on
 error
To: Dinghao Liu <dinghao.liu@zju.edu.cn>, kjlu@umn.edu
References: <20200520095148.10995-1-dinghao.liu@zju.edu.cn>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <2b5d64f5-825f-c081-5d03-02655c2d9491@gmail.com>
Date: Wed, 20 May 2020 13:15:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200520095148.10995-1-dinghao.liu@zju.edu.cn>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjAuMDUuMjAyMCAxMjo1MSwgRGluZ2hhbyBMaXUg0L/QuNGI0LXRgjoKPiBwbV9ydW50aW1lX2dl
dF9zeW5jKCkgaW5jcmVtZW50cyB0aGUgcnVudGltZSBQTSB1c2FnZSBjb3VudGVyIGV2ZW4KPiBp
dCByZXR1cm5zIGFuIGVycm9yIGNvZGUuIFRodXMgYSBwYWlyaW5nIGRlY3JlbWVudCBpcyBuZWVk
ZWQgb24KPiB0aGUgZXJyb3IgaGFuZGxpbmcgcGF0aCB0byBrZWVwIHRoZSBjb3VudGVyIGJhbGFu
Y2VkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERpbmdoYW8gTGl1IDxkaW5naGFvLmxpdUB6anUuZWR1
LmNuPgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jIHwgMiAr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYyBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMKPiBpbmRleCBkM2U2MzUxMmE3NjUuLmRk
MTM0YTNhMTVjNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRl
L3ZkZS5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS92ZGUuYwo+IEBA
IC03NzcsNyArNzc3LDcgQEAgc3RhdGljIGludCB0ZWdyYV92ZGVfaW9jdGxfZGVjb2RlX2gyNjQo
c3RydWN0IHRlZ3JhX3ZkZSAqdmRlLAo+ICAKPiAgCXJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMo
ZGV2KTsKPiAgCWlmIChyZXQgPCAwKQo+IC0JCWdvdG8gdW5sb2NrOwo+ICsJCWdvdG8gcHV0X3J1
bnRpbWVfcG07Cj4gIAo+ICAJLyoKPiAgCSAqIFdlIHJlbHkgb24gdGhlIFZERSByZWdpc3RlcnMg
cmVzZXQgdmFsdWUsIG90aGVyd2lzZSBWREUKPiAKCkhlbGxvIERpbmdoYW8sCgpUaGFuayB5b3Ug
Zm9yIHRoZSBwYXRjaC4gSSBzZW50IG91dCBhIHNpbWlsYXIgcGF0Y2ggYSB3ZWVrIGFnbyBbMV0u
CgpbMV0KaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2xpbnV4LXRlZ3JhL3Bh
dGNoLzIwMjAwNTE0MjEwODQ3LjkyNjktMi1kaWdldHhAZ21haWwuY29tLwoKVGhlIHBtX3J1bnRp
bWVfcHV0X25vaWRsZSgpIHNob3VsZCBoYXZlIHRoZSBzYW1lIGVmZmVjdCBhcyB5b3Vycwp2YXJp
YW50LCBhbHRob3VnaCBteSB2YXJpYW50IHdvbid0IGNoYW5nZSB0aGUgbGFzdF9idXN5IFJQTSB0
aW1lLCB3aGljaApJIHRoaW5rIGlzIGEgYml0IG1vcmUgYXBwcm9wcmlhdGUgYmVoYXZpb3IuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

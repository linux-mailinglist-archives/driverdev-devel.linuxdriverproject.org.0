Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0579580491
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 08:04:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4C04877F1;
	Sat,  3 Aug 2019 06:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3SCG2UGk6rV3; Sat,  3 Aug 2019 06:04:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0082F87711;
	Sat,  3 Aug 2019 06:04:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDFF61BF82D
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:04:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B8BD620424
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:04:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g6VSi3D+QEYJ for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 06:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id BEB091FE32
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 06:04:17 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id v19so68263286wmj.5
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 23:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TuPsU+wIk9sIcrLOl4LJnc1V+9lHBDgGcDwEKtWWqcc=;
 b=HT8uNMOe3xQ+8v+NGlpiBqKUVlnXu+y+8pTuy/KqlOjTymceYZgX4CYrrsGfPckcQL
 v9X6pY6LtLFAY3nYKefMVPRv6kYv8WCHdOqgTaw57zNyVPZIMfFhxeOc0bmThKDJlxSl
 AXPO1owM6GP+6Q6K15mYojVWDrGlWzt/NlOJwXlQ7+zA9wuDprcfmqKwbp1XhC6c9pdF
 4ktox4g9KXM6+6OqH5uKoXnFL5Qm3CJ0/1pzxBympl+E7Z74Wd17Ntp0vtt54wn94wJR
 mOS/3C3AcSBGT8OTnMAP9dA6iMQZXd2laLo2EK/Yw76XyHC+/e3Miq9eZgoK3VvJ/kTV
 9hfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TuPsU+wIk9sIcrLOl4LJnc1V+9lHBDgGcDwEKtWWqcc=;
 b=R4LlEBDtEB5kMsJJibWgEWY+b2M/1kc3L27QvRc0CcJVuf1Mr7RCem90jATV44FIN0
 DKQzHSF2UxNWcsmhjnWaZaC7pkHEVfMRqX8IlLi8zvxznxv5zSOAFitonAuwDq+i2EiO
 g/glqmDXq93n9XMZ1XwBgdzmbpW5SfwJshTsx1LXPXmQMpHySZ/yQCeGkr9YTGVaT101
 Kmgcj63Bf4/8WGoLeznjS4/AScZNWzv/SBHCJzs0bBIX/3kazFAVAQ0EmRdqXO4uRWb9
 PhjfUUUWELpcbcd4yXhOHhDhJVjw3EZk8C/mw6Z6WnvnlfxlynP6dXDtDWfSPrqNW4X8
 LmtQ==
X-Gm-Message-State: APjAAAWj4OLTb/gXtGF/AamjE99t/AuWIVCifwMlDSUjPPGrPjrBpnXE
 EId42ePsg2HPqVC+N6r7inQwEWDhuVFsyg==
X-Google-Smtp-Source: APXvYqwHgOP+QwT4wtjARAN/ZGIjpCOSDlFdPyx71PGItur4Jad51ToiXyPCxCj6XswP9TeBjy3/vA==
X-Received: by 2002:a7b:cf3a:: with SMTP id m26mr7950518wmg.6.1564812255722;
 Fri, 02 Aug 2019 23:04:15 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id t13sm93817734wrr.0.2019.08.02.23.04.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 23:04:15 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: natechancellor@gmail.com
Subject: [PATCH v2] net: mdio-octeon: Fix Kconfig warnings and build errors
Date: Fri,  2 Aug 2019 23:01:56 -0700
Message-Id: <20190803060155.89548-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190731185023.20954-1-natechancellor@gmail.com>
References: <20190731185023.20954-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 netdev@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWZ0ZXIgY29tbWl0IDE3MWE5YmFlNjhjNyAoInN0YWdpbmcvb2N0ZW9uOiBBbGxvdyB0ZXN0IGJ1
aWxkIG9uCiFNSVBTIiksIHRoZSBmb2xsb3dpbmcgY29tYmluYXRpb24gb2YgY29uZmlncyBjYXVz
ZSBhIGZldyBLY29uZmlnCndhcm5pbmdzIGFuZCBidWlsZCBlcnJvcnMgKGRpc3RpbGxlZCBmcm9t
IGFybSBhbGx5ZXNjb25maWcgYW5kIFJhbmR5J3MKcmFuZGNvbmZpZyBidWlsZHMpOgoKICAgIENP
TkZJR19ORVRERVZJQ0VTPXkKICAgIENPTkZJR19TVEFHSU5HPXkKICAgIENPTkZJR19DT01QSUxF
X1RFU1Q9eQoKYW5kIENPTkZJR19PQ1RFT05fRVRIRVJORVQgYXMgZWl0aGVyIGEgbW9kdWxlIG9y
IGJ1aWx0LWluLgoKV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRlY3RlZCBm
b3IgTURJT19PQ1RFT04KICBEZXBlbmRzIG9uIFtuXTogTkVUREVWSUNFUyBbPXldICYmIE1ESU9f
REVWSUNFIFs9eV0gJiYgTURJT19CVVMgWz15XQomJiA2NEJJVCBbPW5dICYmIEhBU19JT01FTSBb
PXldICYmIE9GX01ESU8gWz1uXQogIFNlbGVjdGVkIGJ5IFt5XToKICAtIE9DVEVPTl9FVEhFUk5F
VCBbPXldICYmIFNUQUdJTkcgWz15XSAmJiAoQ0FWSVVNX09DVEVPTl9TT0MgfHwKQ09NUElMRV9U
RVNUIFs9eV0pICYmIE5FVERFVklDRVMgWz15XQoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4uL2Ry
aXZlcnMvbmV0L3BoeS9tZGlvLW9jdGVvbi5jOjE0OgouLi9kcml2ZXJzL25ldC9waHkvbWRpby1j
YXZpdW0uaDoxMTE6MzY6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZgpmdW5jdGlvbiDi
gJh3cml0ZXHigJk7IGRpZCB5b3UgbWVhbiDigJh3cml0ZWzigJk/ClstV2Vycm9yPWltcGxpY2l0
LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQogIDExMSB8ICNkZWZpbmUgb2N0X21kaW9fd3JpdGVxKHZh
bCwgYWRkcikgd3JpdGVxKHZhbCwgKHZvaWQgKilhZGRyKQogICAgICB8ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fn5+CgpDT05GSUdfNjRCSVQgaXMgbm90IHN0cmljdGx5
IG5lY2Vzc2FyeSBpZiB0aGUgcHJvcGVyIHJlYWRxL3dyaXRlcQpkZWZpbml0aW9ucyBhcmUgaW5j
bHVkZWQgZnJvbSBpby02NC1ub25hdG9taWMtbG8taGkuaC4KCkNPTkZJR19PRl9NRElPIGlzIG5v
dCBuZWVkZWQgd2hlbiBDT05GSUdfQ09NUElMRV9URVNUIGlzIGVuYWJsZWQgYmVjYXVzZQpvZiBj
b21taXQgZjlkYzlhYzUxNjEwICgib2YvbWRpbzogQWRkIGR1bW15IGZ1bmN0aW9ucyBpbiBvZl9t
ZGlvLmguIikuCgpGaXhlczogMTcxYTliYWU2OGM3ICgic3RhZ2luZy9vY3Rlb246IEFsbG93IHRl
c3QgYnVpbGQgb24gIU1JUFMiKQpSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBp
bnRlbC5jb20+ClJlcG9ydGVkLWJ5OiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+ClJl
cG9ydGVkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4KU2lnbmVkLW9m
Zi1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KLS0tCgp2
MSAtPiB2MjoKCiogQWRkcmVzcyBSYW5keSdzIHJlcG9ydGVkIGZhaWx1cmUgaGVyZTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2L2IzNDQ0MjgzLTdhNzctZWNlOC03YWM2LTQxNzU2YWE3
ZGM2MEBpbmZyYWRlYWQub3JnLwogIGJ5IG5vdCByZXF1aXJpbmcgQ09ORklHX09GX01ESU8gd2hl
biBDT05GSUdfQ09NUElMRV9URVNUIGlzIHNldC4KCiogSW1wcm92ZSBjb21taXQgbWVzc2FnZQoK
IGRyaXZlcnMvbmV0L3BoeS9LY29uZmlnICAgICAgIHwgNCArKy0tCiBkcml2ZXJzL25ldC9waHkv
bWRpby1jYXZpdW0uaCB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3BoeS9LY29uZmlnIGIvZHJp
dmVycy9uZXQvcGh5L0tjb25maWcKaW5kZXggMjBmMTRjNWZiYjdlLi4wZTNkOWUzZDM1MzMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3BoeS9LY29uZmlnCisrKyBiL2RyaXZlcnMvbmV0L3BoeS9L
Y29uZmlnCkBAIC0xNTksOCArMTU5LDggQEAgY29uZmlnIE1ESU9fTVNDQ19NSUlNCiAKIGNvbmZp
ZyBNRElPX09DVEVPTgogCXRyaXN0YXRlICJPY3Rlb24gYW5kIHNvbWUgVGh1bmRlclggU09DcyBN
RElPIGJ1c2VzIgotCWRlcGVuZHMgb24gNjRCSVQKLQlkZXBlbmRzIG9uIEhBU19JT01FTSAmJiBP
Rl9NRElPCisJZGVwZW5kcyBvbiAoNjRCSVQgJiYgT0ZfTURJTykgfHwgQ09NUElMRV9URVNUCisJ
ZGVwZW5kcyBvbiBIQVNfSU9NRU0KIAlzZWxlY3QgTURJT19DQVZJVU0KIAloZWxwCiAJICBUaGlz
IG1vZHVsZSBwcm92aWRlcyBhIGRyaXZlciBmb3IgdGhlIE9jdGVvbiBhbmQgVGh1bmRlclggTURJ
TwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmggYi9kcml2ZXJzL25l
dC9waHkvbWRpby1jYXZpdW0uaAppbmRleCBlZDVmOWJiNTQ0OGQuLmI3Zjg5YWQyNzQ2NSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmgKKysrIGIvZHJpdmVycy9uZXQv
cGh5L21kaW8tY2F2aXVtLmgKQEAgLTEwOCw2ICsxMDgsOCBAQCBzdGF0aWMgaW5saW5lIHU2NCBv
Y3RfbWRpb19yZWFkcSh1NjQgYWRkcikKIAlyZXR1cm4gY3ZteF9yZWFkX2NzcihhZGRyKTsKIH0K
ICNlbHNlCisjaW5jbHVkZSA8bGludXgvaW8tNjQtbm9uYXRvbWljLWxvLWhpLmg+CisKICNkZWZp
bmUgb2N0X21kaW9fd3JpdGVxKHZhbCwgYWRkcikJd3JpdGVxKHZhbCwgKHZvaWQgKilhZGRyKQog
I2RlZmluZSBvY3RfbWRpb19yZWFkcShhZGRyKQkJcmVhZHEoKHZvaWQgKilhZGRyKQogI2VuZGlm
Ci0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK

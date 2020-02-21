Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C913167DD7
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 14:00:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 430D2863BB;
	Fri, 21 Feb 2020 13:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EpeMidt3MKR9; Fri, 21 Feb 2020 13:00:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 545A38631C;
	Fri, 21 Feb 2020 13:00:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C875C1BF2B4
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 13:00:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C4C7A871C0
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 13:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lqm+dCOFBAbx for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 13:00:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75D1686ECC
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 13:00:43 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id v28so2190603edw.12
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 05:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=QBFgdLotaJbf8D6sCHhEOeKazg3tPMdRr+F2q6mT7Ww=;
 b=pCSQYYDARIWi/Bu1n0YPO7RUnnvH54n4JQ/cyYKejMlxa3B0C7Y8DHGKfOnhj5g8Bk
 zscwMiOE2mqxVGYy3yP/n1xHLulOsv3HK+Eo3uanB7RM6+83aCgQvf2wJI/8/3SE1q9R
 yKYHFYofyp8/IrPAkO8VD1BugBDDtyB9DFWG1Sn+Hld5zKHLnK/zqAGfjY6gskRm/i1u
 cpCFXlmZj2UdZUQ2fg0zIRjCxvtQx5KdbprgPTWmJr8y2jS6oCP9ucRfYN5OgQ1+zalJ
 hHgSrYk01kiIX4K2BdnGs6o2tLOcftyOEv0GmFBKhcpE7ai9gEuMfmWwcXN5HrkWo1sG
 f/Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=QBFgdLotaJbf8D6sCHhEOeKazg3tPMdRr+F2q6mT7Ww=;
 b=eKInG6uT3+XhjnM5IjRM1dywl0Rr0FmxvrvL+QvtrdfFS7Lj1bDI2VTF2HE6BRb8pW
 TRvSk3tcHYrjy09D6tJpck0LonXDxhQjpPqxD+Yc4JmbrAhdduwN524wlr19AsN/EZCX
 GzWe5FcmYUZGuEMx2dFk8qbBbr9EMeSGCpzkfADHScazrxk+6/PC7F6BxLfaHW4iozYz
 zOS0sBZwJ5cKhGrJzxxpADyYwZ/EXCeT/6OZqW/JZLuXdx378iEBtjzdIKmGgERQAApY
 HiTDK3asdf4TkqboGk57L2smHznpTWx4iTU43rJh0SBBZKLTAUlEq1p2ehwcLdCbAOqA
 uNoQ==
X-Gm-Message-State: APjAAAVjVgnE1TJiTr3jkHxsjZOGjcFrzmMahi3TfBTka1H4sJydv5aX
 5r8KOzAVrLCGYt61AUtYX5OcNmg2kHZPe8Xbrvw=
X-Google-Smtp-Source: APXvYqzkqhVHb2OT3KA7w23FEtGNftjqVrzHyiLpNkp/AgjGRFoTTeNCCNKGXK02APwplX/AS6oESsWeh1pJFWpw1TY=
X-Received: by 2002:a17:906:ce57:: with SMTP id
 se23mr34241618ejb.362.1582290041432; 
 Fri, 21 Feb 2020 05:00:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:aa7:c755:0:0:0:0:0 with HTTP; Fri, 21 Feb 2020 05:00:40
 -0800 (PST)
From: David Johnson <tetnanikpo@gmail.com>
Date: Fri, 21 Feb 2020 15:00:40 +0200
Message-ID: <CAOHo_mSkaF000tjFjTJt-j2CBvHw5vbbKDjtTheaaVaUmcb2Wg@mail.gmail.com>
Subject: Spende fur dich
To: undisclosed-recipients:;
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
Reply-To: johnsondavid57td@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkd1dGVuIFRhZywKTWVpbiBOYW1lIGlzdCBEYXZpZCBKb2huc29uLCBkZXIgR2V3aW5uZXIg
dm9uClp3ZWlodW5kZXJ0YWNodHVuZG5ldW56aWcgTWlsbGlvbmVuIERyZWlodW5kZXJ0dGF1c2Vu
ZCBVUy1Eb2xsYXIKKCQyOTguMzAwLjAwMCkuSWNoIGtvbW1lIGF1cyBOZXcgWW9yaywgNTcgSmFo
cmUgYWx0LiBEaWVzZXIgU2llZyBoYXQKbWVpbiBnYW56ZXMgTGViZW4gdmVyw6RuZGVydC4gSWNo
IG3DtmNodGUgZGlyIG5ldW5odW5kZXJ0ZsO8bmZ6aWd0YXVzZW5kCkRvbGxhciAoJDk1MC4wMDAp
IGbDvHIKd29obHTDpHRpZ2UgWndlY2tlIHNwZW5kZW4uIEtvbnRha3RpZXJlbiBTaWUgbWljaCB6
dXLDvGNrLCB1bSB3ZWl0ZXJlCkluZm9ybWF0aW9uZW4gw7xiZXIgbWVpbmUgRS1NYWlsIHp1IGVy
aGFsdGVuOgpqb2huc29uZGF2aWQ1N3RkQGdtYWlsLmNvbQpJY2ggd8O8bnNjaGUgZGlyIGVpbmVu
IHNjaMO2bmVuIFRhZy4KRGF2aWQgSm9obnNvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E9C526E7
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 10:41:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A362C8798D;
	Tue, 25 Jun 2019 08:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IfObQxe2iuOq; Tue, 25 Jun 2019 08:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 328DE86887;
	Tue, 25 Jun 2019 08:41:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F7621BF319
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B54A86174
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 08:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3+WCm2mNiCek for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 08:41:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D841849A6
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 08:41:36 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id p17so15414254ljg.1
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 01:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mjgwcyJ55IU5CCabgiaO1OsncTqE3O0eNT0VvDy1+GQ=;
 b=M2hQ4mXh+4jE5DXo+Q21Be/cCzrAQDjHugIax3ds73ekaqhpev2mI6qQKiTsDafOq/
 7F9FrubHdDAGmfl5JwkVhvEksyy/N3UTi+YD1on3V5ZU/yU3RPuYuLxU/28OR3x3N2u4
 Ax1MVgGHv5UJyO6TE23YTw58j5OYNnQTN61st9LBqJqXRzCNYRFrjaaMHaOXqwuIC3DY
 BkUH9iPvTuk9b5dYdEw1lifvRllOZ+TtqR92LHYxy3j20FQapAom9YvNQGIRL/6h6O12
 n8SOdWo2fSvZN9vafdiD6b2G2p2qhLSmuRLsIsedi51B3i6w++f+mxL22ryZ7HzCl0bt
 p0jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mjgwcyJ55IU5CCabgiaO1OsncTqE3O0eNT0VvDy1+GQ=;
 b=c384+zwTkXyOadOxULj0p71FN7cdeG2mCHEBO7r31amXiFBIK3nzvbdkWgsDNeHpTD
 lpNjH5gmVE9Ziz+sGyLx7RDR6yTwB+xiC6RMeCGyy4wDOggjnqhZK+jwVUv4WjRYrE1c
 0cn7NS8txpjuoD8hDZJAWz39BK/VVyPVLtuo3OIYJWAfpotYvhIqBpcbIvdRtU8ehtU8
 PaLQYi5m5RzZ9i/HxQiECbGVgDdM432NNUug1f/JOCamJFKJE9UG/a9CbxqTFgFn1Dao
 8yyKsPl0Mp1vK8aKxyX5Eul0+gjD5ipGnLhTGp/vg8kJ6ABOUuTHDwnoDNhekx82cpm9
 MWNQ==
X-Gm-Message-State: APjAAAW1Vy8f9EclbGXRrxpxAcfpFmynK/PQDVe7qJ344BG6WXuAbvPz
 MtNZaqW+I3QkTbvvo4huMVM+NQ==
X-Google-Smtp-Source: APXvYqzyGcO4jNOkWAE+BhdGm3BGzMd6xcusm2A/UD2H84B2HiI8UCVcCgR8Xt2+j9HH985V/P7NkQ==
X-Received: by 2002:a2e:8181:: with SMTP id e1mr1405423ljg.226.1561452094275; 
 Tue, 25 Jun 2019 01:41:34 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id h78sm341564ljf.88.2019.06.25.01.41.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 01:41:33 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/4] Minor style issue fixes for staging/kpc2000
Date: Tue, 25 Jun 2019 10:41:26 +0200
Message-Id: <20190625084130.1107-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpIZXJlIGFyZSBzb21lIGZpeGVzIGZvciBtaW5vciBzcGFjZSwgcGFyZW50aGVzZSBhbmQg
YnJhY2UgaXNzdWVzIGluCmtwYzIwMDAgcmVwb3J0ZWQgYnkgY2hlY2twYXRjaC5wbC4KCi0gU2lt
b24KClNpbW9uIFNhbmRzdHLDtm0gKDQpOgogIHN0YWdpbmc6IGtwYzIwMDA6IGFkZCBtaXNzaW5n
IHNwYWNlcyBpbiBrcGMyMDAwX2kyYy5jCiAgc3RhZ2luZzoga3BjMjAwMDogYWRkIG1pc3Npbmcg
c3BhY2VzIGluIGtwYzIwMDBfc3BpLmMKICBzdGFnaW5nOiBrcGMyMDAwOiByZW1vdmUgdW5uZWNl
c3NhcnkgcGFyZW50aGVzZXMgaW4ga3BjMjAwMF9zcGkuYwogIHN0YWdpbmc6IGtwYzIwMDA6IGZp
eCBicmFjZSBpc3N1ZXMgaW4ga3BjMjAwMF9zcGkuYwoKIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAw
L2twYzIwMDBfaTJjLmMgfCAgNiArKystLS0KIGRyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIw
MDBfc3BpLmMgfCAxOCArKysrKysrKy0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5z
ZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

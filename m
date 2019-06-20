Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21EA4CB46
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 11:45:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E0B087E17;
	Thu, 20 Jun 2019 09:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DFEvFPxL2leo; Thu, 20 Jun 2019 09:45:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7DC2087DBB;
	Thu, 20 Jun 2019 09:45:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0741BF31F
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 09:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1861A2037A
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 09:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1BMmiS-GhDg for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 09:45:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id E0DF620347
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 09:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1561023940;
 bh=hEgF6OSeCfwgBif/kxdT6Z+l79AXOO5Gwuztx+BfNcw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=foean23M2wtdaGOIMwJbLbJ0e2TsrUbcKiPLHoUst260UJ0Ijk532RMvuw/YLhFDq
 qHcVeJBFJTVYDZ3iiBruqDRxPGEginVjZ71BdI3JJTkRqcj/cX5R2bW4QlvLZN5bqs
 JZ9+C5dk3w565NKgrPvwhv26k5u4Yh1kAZBUxYgs=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from lab-pc08.sra.uni-hannover.de ([130.75.33.87]) by smtp.web.de
 (mrweb102 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0LwqFo-1ifmo83IeO-016Syv; Thu, 20 Jun 2019 11:45:40 +0200
From: =?UTF-8?q?Christian=20M=C3=BCller?= <muellerch-privat@web.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/1] drivers/staging/rtl8192u: adjust block comments
Date: Thu, 20 Jun 2019 11:45:33 +0200
Message-Id: <20190620094534.5658-1-muellerch-privat@web.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ejcM29jC0f397KB0zritUwbUYZZ89Uw6vwc1O+Xu9SWjgFvfuPC
 b2Jld7+MtjW3CqcdWVl02TKsYveKQcles2sEytlmrJsBbcpemsdSCWXkXd8nc6FleKFPCYq
 ukeU+c9Xc+8LLdC5iQoYvQBaFRTr9/ttDWBPlBOAXJu19KfNwmtSL3P/1RrL1FWToPr9VV1
 1L+xJ2LYSoAaBVdMXxLjQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:XGLcXQsgQJE=:YlRQM1WWjLg1bXWLt5qt+K
 dM+QpJSDpBDksBmXqPiUncYt0eoqjrFBIemNp1OhBJh+TmrC9+Rd8IpEmwN72eU4HacwgFw2G
 IUZEjd57BeUwSQvcwA8fHwe6OKyAAPqePXgaaPl0SNC/a/FGa9Tp5QdOZqtNKgfWso8nJtwAa
 zfp3A/WnARELWKvr5+C6Vd3rrr8sHfM0sCE6GjBH07tn0ad3FHzqGgJpDrJzCscmRc/O+SbzB
 Z8HAuShzGQN9XSEjdqdMTnctDHdgHhhM93EcpB72NpC4yrZm2iBS5D6m3lyxHoYODqbzsbRFS
 6giYVVpWu5iITaTjL8saoIORQ7zAGCLVtnEqf91nnG/yBFWDcsuOx/UjX9qL11RdTqICQy0Q5
 DlCSpZZqTkU/aPYijKWn1Xf9sPx2oCIz5bO1E/fTJaMaR4kAderqOwJDnaGmxfFumRSRBa6t6
 8DV9tCOQEljkgAWLfqh6yatBDGKKqy/MJMNXjON+RHFYp6XCRCIthbRlxviR70P4mWzbMY0II
 peM1xjHZqQyDoA4lv1pcD1WuyZpV36POaJC+V3V+PRr3RCIsOzMecyG5tRa2N/II+Rq7nwFMD
 6QGrQ3fvsHrnLIfcvL8MaNzJ6nrMyXBzHC1E+YOyJN2i/fJVRsfDZwFyNTQhBD6njFPZZf75i
 fzeVDhCxQxYIBMwjlHFuVY5iOHpQzfS8RuHjSYFSK1SkFxas85xV9w4vEg+D45dr51XDCllBh
 8j/1Wfi6heHAwPcPXuQD0B+2nmT9Uk9YvOePW0pAE2R4/CW4KKDuEZOgC/tTa/keYbqIQbrbV
 1r8EJiYW9X0eHgDRq/JpMpQK1Bos+YkVwSNfNwt475MWSdDgy9yyvVqi4yuI8ggibNeN4VSMj
 GJj4YCVp6vBzSlR7fu5Jw/7+ifQX6r/1Re5FintURiwMEBF3YJkkHYWO3heIQIqITZ0ehiPIj
 HZjwMdHZ0k7+Y6owSczirwBjGFzkagwNPTSRWDJ15hDkl1QeUUom2
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
Cc: devel@driverdev.osuosl.org, felix.trommer@hotmail.de,
 linux-kernel@i4.cs.fau.de, linux-kernel@vger.kernel.org,
 johnfwhitmore@gmail.com,
 =?UTF-8?q?Christian=20M=C3=BCller?= <muellerch-privat@web.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U2luY2Ugb3VyIGxhc3QgYXR0ZW1wdCBvZiBhIGZldyBlbm9ybW91cyBjb21taXRzLCB3ZSBkaXRj
aGVkIG91ciBjaGFuZ2VzCmFuZCBzdGFydGVkIG92ZXIgYWdhaW4sIHRoaXMgdGltZSB3aXRoIGEg
bG90IHNtYWxsZXIgY2hhbmdlcyBwZXIgcGF0Y2gKYWRyZXNzaW5nIG9uZSBzbWFsbCB0aGluZyBh
dCBhIHRpbWUuCgpTb3JyeSBmb3IgdGhlIGluY29udmVuaWVuY2UgbGFzdCB0aW1lIQoKQ2hyaXN0
aWFuIE3DvGxsZXIgKDEpOgogIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTI5dTogYWRqdXN0IGJsb2Nr
IGNvbW1lbnRzCgogZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4MTl4VV9waHkuYyB8IDM5ICsr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMo
KyksIDEzIGRlbGV0aW9ucygtKQoKLS0KMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

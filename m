Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DC932FBB
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:34:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D0CB814D3;
	Mon,  3 Jun 2019 12:34:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1T4Z5eSbLUG5; Mon,  3 Jun 2019 12:34:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 90E8A87765;
	Mon,  3 Jun 2019 12:34:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 587261BF4E6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5583386174
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:34:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7OBEq4ccPbiy for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:34:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3809C86186
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1559565270;
 bh=H+mYUcCUxLh+PaxmPpuNy/NUK3kvMoT8KgwI5OrJRH0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=ButYLsGX0V5ur1u7LNjP///SWVLUOnhW5LAHjmYg6czNPVHwM6kMjmingGUdlKiV/
 o9BGr1QZ3CkSc6bzim8VkeoCA6uLhpavscBLS4/QJ8CR//S69iloYZwaziIEL6jh2X
 lhXjw2DM1LmK0BIkcMmUYJaAKT0/AdUMb7CcazoE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from lab-pc08.sra.uni-hannover.de ([130.75.33.87]) by smtp.web.de
 (mrweb102 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0MK24P-1hWP3L1FS9-001SxR; Mon, 03 Jun 2019 14:21:26 +0200
From: =?UTF-8?q?Christian=20M=C3=BCller?= <muellerch-privat@web.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/3] Fixing style errors in staging/drivers/rtl8192u
Date: Mon,  3 Jun 2019 14:21:01 +0200
Message-Id: <20190603122104.2564-1-muellerch-privat@web.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:VPSFcTBh0Ipw6QYZ0N/RslXaVNL2v2bwzj2HYaZwVIFdP7fr9Qn
 UDCcvVCRNAzcxLyxlMHcs7/J78/KIDlSALfG77AQNkLMUFB8DSO8EtpXDoxaV9bqFKFVLE1
 E6s6VF/3+kJrpD5O4JaAt72tEoqePiDVLMnxC6P9LwYXvi8wtROg6SLfIr3Um+dhnEf0OUx
 tBxFonv9MgbLFn9UPyv5Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:rV8n1TbMfHM=:C0d16WXgmCl2ZMg4+hMqzq
 gFkq4JFeJgI1sQZEkJklIa00+nrt0mzhNg68Mx3dCapLZy5UPRsFiAu9PaVnj0t6h8AuGldj1
 +Uqf8pRowCt2DZ1HzGbOxQQ9DbY5ufyKBkZoPw1Egv2F6SAW8khlA+5D/fO5e+yckL2wb6WK5
 Be2aofMsXO81fUJEPFWdwYtZrR4xI199sGiN+MPwWJjm6lFXfpSzo9lPfCUREnYRU8GOD+NsN
 BTsBptqGsJ6tB5Ee3z4lnPDrBiabEyrc6AQL2iCc2bLUbv72gNB7RPe3YhbwaebtsefVSn+z5
 ECz82zTpCc3sB/F05mnSPBXviFMuSVbDcQFV5m91UOHf59ejRynhKEOOIX4lgGLqNZMcoqHkE
 Y4/SGndIBNgMF538QJKbBEXnccBvIBpErB1mccBL1liUz1upInfIZBd83d1lSQT/tJvi6am77
 sv4z6YnAbnm7tdzfzpR3Ql92T0AutMfi8eepwoTs6q07jXgyhCwznIyLRWBmkYDQocX+QtX6P
 nTl7rC6ivmqVLYe9C7G4Xc4LyP1piTDeeXIo9CvXef7ZveOe9l3VsWmPN3W006Eot3pERa9Xx
 TuEQF26k+m+MLQ6VWodZrTPemR/YscNrrai7OL6fWNXX64cVNXZD0FdwKtMxYWfN5KQqbGBnU
 g/lHqJqtWt0+Wjz2CzgD9kAJRzyCgX1IaQc/sSR5GbxZlKbvoxhRBSuH5Cvzghc4shwWZpbza
 4kDJx4uNpjpSnNR/jN+B4jzsLvu2XxPqOzXmRHZ/iGLKfH+wxUd8P9MSJRz68zPIPe0+W47r1
 4UJuReoo3kdrrFqd94MU+MGreIRx5oL5fpQqN0BqOZorS9t9K8AULC2aHt9iG8ylqmX06w+fl
 tUTIRS9jPWfoI/lPDa4tzv2E+RDQvpjzatNCxHmnaK4Wv0dCXUtJSVRXr33YWrCs6HVpc4Rfa
 DBFhWSSIVf/fwM6NL71I2WvjIBJuO9h6tGxwJjRi7GKRcq6xc/Z0l
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

VGhpcyBzZXJpZXMgb2YgcGF0Y2hlcyBmaXhlcyB2YXJpb3VzIHN0eWxlIGVycm9ycyBpbiB0aGUg
cnRsODE5MnUKc3RhZ2luZyBkcml2ZXIuIFRoZXNlIGZpeGVzIGNvbnRhaW4gcmVmb3JtYXR0aW5n
IG9mIGNvZGUgY29tbWVudHMsCmNoYW5naW5nIG9mIGluZGVudGF0aW9ucywgY2xlYW5pbmcgdXAg
Y29tbWVudGVkIG91dCBjb2RlIHdpdGhpbiB0aGUKc291cmNlLWNvZGUgYW5kIGZpeGVzIGZvciBp
bmRpdmlkdWFsIGVycm9ycyBpbmRpY2F0ZWQgYnkgdGhlIGNoZWNrcGF0Y2ggdG9vbC4KCkNocmlz
dGlhbiBNw7xsbGVyICgxKToKICBkcml2ZXJzL3N0YWdpbmcvcnRsODE5MnU6IEZpeCBvZiBjaGVj
a3BhdGNoLWVycm9ycwoKRmVsaXggVHJvbW1lciAoMik6CiAgZHJpdmVycy9zdGFnaW5nL3J0bDgx
OTJ1OiBSZWZvcm1hdCBjb21tZW50cwogIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkydTogUmVtb3Zl
IGNvbW1lbnQtb3V0IGNvZGUKCiBkcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUvaWVlZTgwMjExL2Rv
dDExZC5jICAgfCAgIDYgKy0KIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9pZWVlODAyMTEvZG90
MTFkLmggICB8ICAgMiArLQogLi4uL3N0YWdpbmcvcnRsODE5MnUvaWVlZTgwMjExL2llZWU4MDIx
MS5oICAgIHwgMzExICsrKy0tLQogLi4uL3J0bDgxOTJ1L2llZWU4MDIxMS9pZWVlODAyMTFfY3J5
cHQuYyAgICAgIHwgICAzICstCiAuLi4vcnRsODE5MnUvaWVlZTgwMjExL2llZWU4MDIxMV9jcnlw
dC5oICAgICAgfCAgMTUgKy0KIC4uLi9ydGw4MTkydS9pZWVlODAyMTEvaWVlZTgwMjExX2NyeXB0
X2NjbXAuYyB8ICAgNyArLQogLi4uL3J0bDgxOTJ1L2llZWU4MDIxMS9pZWVlODAyMTFfY3J5cHRf
dGtpcC5jIHwgIDEzICstCiAuLi4vcnRsODE5MnUvaWVlZTgwMjExL2llZWU4MDIxMV9jcnlwdF93
ZXAuYyAgfCAgIDkgKy0KIC4uLi9ydGw4MTkydS9pZWVlODAyMTEvaWVlZTgwMjExX21vZHVsZS5j
ICAgICB8ICAgNiArLQogLi4uL3N0YWdpbmcvcnRsODE5MnUvaWVlZTgwMjExL2llZWU4MDIxMV9y
eC5jIHwgOTczICsrKysrKysrLS0tLS0tLS0tLQogLi4uL3J0bDgxOTJ1L2llZWU4MDIxMS9pZWVl
ODAyMTFfc29mdG1hYy5jICAgIHwgMzM2ICsrKy0tLQogLi4uL3J0bDgxOTJ1L2llZWU4MDIxMS9p
ZWVlODAyMTFfc29mdG1hY193eC5jIHwgIDIxICstCiAuLi4vc3RhZ2luZy9ydGw4MTkydS9pZWVl
ODAyMTEvaWVlZTgwMjExX3R4LmMgfCAzMTEgKysrLS0tCiAuLi4vc3RhZ2luZy9ydGw4MTkydS9p
ZWVlODAyMTEvaWVlZTgwMjExX3d4LmMgfCAxMTUgKy0tCiAuLi4vc3RhZ2luZy9ydGw4MTkydS9p
ZWVlODAyMTEvcnRsODE5eF9CQS5oICAgfCAgIDIgKy0KIC4uLi9ydGw4MTkydS9pZWVlODAyMTEv
cnRsODE5eF9CQVByb2MuYyAgICAgICB8IDE2OSArLS0KIC4uLi9zdGFnaW5nL3J0bDgxOTJ1L2ll
ZWU4MDIxMS9ydGw4MTl4X0hULmggICB8IDExMSArLQogLi4uL3J0bDgxOTJ1L2llZWU4MDIxMS9y
dGw4MTl4X0hUUHJvYy5jICAgICAgIHwgMjY0ICsrLS0tCiAuLi4vc3RhZ2luZy9ydGw4MTkydS9p
ZWVlODAyMTEvcnRsODE5eF9Rb3MuaCAgfCAgMjQgKy0KIC4uLi9ydGw4MTkydS9pZWVlODAyMTEv
cnRsODE5eF9UU1Byb2MuYyAgICAgICB8IDExMCArLQogZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1
L3I4MTgwXzkzY3g2LmMgICAgICAgIHwgICAzICstCiBkcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUv
cjgxODBfOTNjeDYuaCAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9y
ODE5MF9ydGw4MjU2LmMgICAgICB8ICAzNiArLQogZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4
MTkyVS5oICAgICAgICAgICAgIHwgIDQ3ICstCiBkcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUvcjgx
OTJVX2NvcmUuYyAgICAgICAgfCAxNTkgKystCiBkcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUvcjgx
OTJVX2RtLmMgICAgICAgICAgfCAyMzIgKystLS0KIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9y
ODE5MlVfZG0uaCAgICAgICAgICB8ICAyMiArLQogZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4
MTkyVV9ody5oICAgICAgICAgIHwgMTkyICsrLS0KIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9y
ODE5MlVfd3guYyAgICAgICAgICB8ICAxNyArLQogZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4
MTl4VV9jbWRwa3QuYyAgICAgIHwgIDc3ICstCiBkcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUvcjgx
OXhVX2NtZHBrdC5oICAgICAgfCAgMTQgKy0KIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9yODE5
eFVfZmlybXdhcmUuYyAgICB8ICAxMiArLQogZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJ1L3I4MTl4
VV9waHkuYyAgICAgICAgIHwgIDMwICstCiBkcml2ZXJzL3N0YWdpbmcvcnRsODE5MnUvcjgxOXhV
X3BoeS5oICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkydS9yODE5eFVf
cGh5cmVnLmggICAgICB8ICAgOSArLQogMzUgZmlsZXMgY2hhbmdlZCwgMTc0NyBpbnNlcnRpb25z
KCspLCAxOTE5IGRlbGV0aW9ucygtKQoKLS0KMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

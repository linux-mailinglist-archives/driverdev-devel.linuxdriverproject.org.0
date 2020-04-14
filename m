Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1814C1A836A
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 17:40:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A1ED52049F;
	Tue, 14 Apr 2020 15:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MiWCKAqTA5V2; Tue, 14 Apr 2020 15:40:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E82D203B2;
	Tue, 14 Apr 2020 15:40:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E39611BF59D
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE34E87D6A
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mh7pKrb9m0xd for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 15:40:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8258887D60
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 15:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586878786;
 bh=nDJVD3AZSdIriWbccSTLZqEVGQm3QecfPNGiBjWsz6o=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AXMojgi8mai/xDVdpSdtmJqNbS/L8S8/dYfL9R2K1CSIvxfWNch3jWyFx5da69mZz
 RJnloac4OCKwq9asLbDLvneU0bDVR6hJY6zxfH6gwyNbxnwMnDY/o7Xk2JkIxrz2yb
 yM4BN/W+RRvttKuwqFCyJiilXVnv74qtHckXBEtw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1M26vL-1jQIPI3EC1-002aT7; Tue, 14 Apr 2020 17:39:45 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/5] staging: vt6656: Remove duplicate code for the
 phy->service assignment
Date: Tue, 14 Apr 2020 17:38:49 +0200
Message-Id: <20200414153849.5785-6-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414153849.5785-1-oscar.carter@gmx.com>
References: <20200414153849.5785-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:DqvcGdhV5y8Y8s39nWF+VzmtqcxktmEh47LOIttz1c+qLCQDQg1
 cfV8jiNw7uEusUe9pgroliSQiI3xubV7UhjX3MTpQbFSgnytyWA5c4kLJgZVY/GLnHcKlnD
 ZfL4zDNVpqKomHGKssznseGBLiDvg2+iwXUu5BPb5WaBHXYB4wIKZjV3hZPdSdVu9YW0vR7
 yzQR0vWNSzHpi02IFC5nw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:3+DymnGzQ14=:9SoIDgt6GCJphG8jmZ2IuV
 Lo7xl13oKDZiPO7+dD0zspU6mBrEsODfbvDNRY70d+rAAO8AXDKRIW+Ru/tXrKboBNnKvr9ap
 fgG5R2CyzvUIWTHB1IPOpHhFl7MJw34RE2yiBNIaMDDL3DLJ2FLT74fOpkt0ubaG4c+4Jdcax
 wBOsUTZMBELSVdwieFVBVP/wMvPMkYinwU7eBpcMaNRoTSdeIkAqKmQMNUEdnDaM5Dq8ecduW
 Ax8AS9ZTM4PCdsdPdah/ssgZiKVuoVDTOdzvA2rGCotWDfU3f28n3hNFS5rYhU+0oMzrn6tM/
 yonV5imk5jEV56QMtsyEMxYUVyieDriK8DJ+qeYeZKX85fHwt5c/ijphBl2Otu7eObysxOkuI
 Nuatj0KwxxF/4ggsq5Ep1ov2+bJurf9NLNM+dgZze3Og0FGYQ1+O4TYd36SwRr7v8mvxBhvTa
 vkRAEOgm2sn5e5gcxxQ/PvXeVXcAB/mLRZRnXOP8iNWWwshTFH38AqWznfNktBac7TokW1PKc
 abP4A2/anBPJphl+qmtL6DZa8C7jGKaN41p+rM9YhrkfP3SV0HNuF5v4VvbmTiQIC02iIiXq3
 uhA87J72jju9NIh5dyB7zqncgbkKL3tSL8fvCFOiCCfmVmXdjZQVTbwFWMN4DcMzMpdKm7K6W
 9yo/9qeELCjVclsLNJwkWPHi/6vgA++l7IAPxf3ITFnRWXApCVfoR4c5//0szF6JfBkeiqOUF
 tBAlwaJJs6uZzCKVRpRtf/2ke7Sr37aNnZ31JWfxoy4dCx1JZyMeN6uIaBi2MxNA2esK5RP8b
 Bx3aw+pspX1gTqJRYBgo7UhHhay3U3EE+u5+k/U1DbSwFoWI83LLZmWlu31WJihfiREQfebWi
 DeF86WW8S4mF5uqtWc9a7qQfW2ldfwbY8UWy87kvrI9HQcJyYSRJjriuNqP5a1euyQkqa63jQ
 g9wCmIQ+92+ggNA2/3G8kJ4EY6qFUOpwj0oNKdlbBPmIGJ0RrIKp6innp0LHgL+bus3qGiTXx
 CNUS/EllOKAl2ONZ9TYzTk2BxZA6I2MAsnSlqhUV1cHuSDsBUtc8rUaY6p3eu6gk3hcScOvh9
 iPrWNB978kLaCl5yljTJoJoTKErjK3PHIF5c8BIASyy671c6ZWfbXU+GJMYHOyeJ1IKj6R0J7
 i09sq3IrPq+HehLQboWS/WgUsamFUvOF8rcauCM8W0tdhCUzUZCGd0wOj5EVBZaOafeelFvzO
 TALSnEw8QxN4GXPPF
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Take out the "phy->service" assignment from the if-else statement due to
it's the same for the two branches.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 3b6f2bcf91a7..13b91d7fc6db 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -320,14 +320,13 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,

 	i = tx_rate > RATE_54M ? RATE_54M : tx_rate;
 	phy->signal = vnt_phy_signal[i] | mask;
+	phy->service = 0x00;

 	if (pkt_type == PK_TYPE_11B) {
-		phy->service = 0x00;
 		if (ext_bit)
 			phy->service |= 0x80;
 		phy->len = cpu_to_le16((u16)count);
 	} else {
-		phy->service = 0x00;
 		phy->len = cpu_to_le16((u16)frame_length);
 	}
 }
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

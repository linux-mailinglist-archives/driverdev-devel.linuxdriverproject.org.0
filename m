Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E981B874E
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 17:18:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D8C262050C;
	Sat, 25 Apr 2020 15:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sp4RlyS0Ctcn; Sat, 25 Apr 2020 15:18:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35A3E204AA;
	Sat, 25 Apr 2020 15:18:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9321BF5AE
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 15:18:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 593E0855E1
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 15:18:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4+djm5QNmDtj for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 15:18:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A17FC853B9
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 15:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587827906;
 bh=jinwy3zrH9UsxZ3tEHwtp3UM6YHeWfehz+l0ZpozMaM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=dtUI6W4S3nAvGnest769Io7PDw0Szl7Ot8yTgJSoou/JjjLUMi2TXOYlbK/32AsO6
 QRy4CbNBMbu/FbfhaKGO3AVs3bXZB5xRt8tKOlBUu60ADIBKjqCJo6EApbO7zTVmyk
 9pOWlIXzg5WosTjL9KwcgiQIDEepwySDUH5DmlDg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1M3DNt-1jTk9U3Ej7-003cdB; Sat, 25 Apr 2020 17:18:25 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/3] Refactor the vnt_rf_table_download function
Date: Sat, 25 Apr 2020 17:17:44 +0200
Message-Id: <20200425151747.8199-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:rmWVld04s+Fu3pTwdTP738ZueO133wtJEO1sO1l0AofOKZcxWVQ
 WJ1OD+c+84OQD8uWBAYMX3aURCQnqBG4ZqsfFgp2lfIZnJu4K7/A/b5GTF0PyztEvzJi8Lu
 rVExGTjMbfzSiY0JY265NvEcvokGsLVSJejB7d7eang5rbBLTgmmQ4Qw0gPAAHNtE2JPuNe
 8UJvYeUWK8JD66qBZiKjw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:q5M185wis7U=:GLML2V8Er0JRJPPMvkxKmP
 /1jnEpRgdmYfyKuZzln8bcEGcE1u2EHOaJbefwguVtwtoM474fO4CO6vSDQSjEsKiznHDjDA9
 C2X3AxaFBn1KMKDbDbuliy2N4gMERf+OyKpmzV1B3sRlvY4zkOoE0MYnokbSREwdCGZdadZH2
 AAkja0BoZb869C7p7HUpoABs5OMbFzoBmqzGA18HYlXuAVo6GtI6/TPv3JFcPtDxCk+ku/a9T
 JiKs2TWeAVpWt/49wrYc0GHYpKIFrXXFj/WT1JfBKNqUBczn6zAe1lt2vfO2bbzttG9yG112g
 LZeFfU+gRbeJ2AjNu94FHxBDyTyIBF8TH54ebTRkZE9gj7wg7b0mg/7UcNXCOwAh7KXibeqq1
 SEzV91fXNKTU9AjBWRSbRHhOqqnoEXmWtww2iWvjhjVprgZlkI+pfbLPJKVFf+E+8biZ2CIOe
 sqYuqnwxH0ob2yY19U01M4rGXpcPMpLGg8YTc1nnx2czbeae+BHFKPvC9Drp13YWrvuKIMh5Y
 DpBlPEo7XaGnING5p2XgbjOI9QqMtccoC4N5LiNNliud9VIs+NqaUP/TXP56bFBH/gaesJmrE
 vhvWRrokpw+u8tprlXAmFifve8eP+PR9fgHvwwv3BcFmB0/4z6Dx/i9f34X3DsRrp0O4PGSvp
 kG4FkafEV2/4oQa+vLCmUiQbkk7u4Xb7QkecIAra4MSVwM+vnm7Z07einLnl068oCxLu1ydrk
 AbBamx2fx0Bwcpj/7K6h7RjIn1aqnFMUMN/z4GvQYaWmgrPoDfXNbC2HI76LFxQf0D6wDNBiO
 HqV7XLZvAi2bEb6wyUdFPrOD9k/xIpeDfOQ/aeKI2jLZpLKOJHVZ/+X9hgdnD+Evs9xgL1XPN
 W6hFjVqcwKGSvsiHRGoesOR+S+Miu8qjgfLeYbTwwxZYc9B5gEzJ28O2K8HCml4ERd6GlDdgl
 cMC2d8ADD17KtdgpxKSAtL0heckiJE2luS2rfd1ogojlrI4ZqAuOv1jBama6zsvXQZNlRGe2K
 f411S/BTrRK52ys6WzjzoN4Wqnmn0ESEMIiO8gmPrwCzemldLh59iLgCLHRP23ZPcVYpr9c29
 GEtdZlD+4epWOydbonRllkcQgKXeMscP2c42Q/wFA5OUs+Ej+J3JO4TFFDS01yCZrcEgit7uI
 St6yxOBk2o3APXP4KGyIJUg1NML+LAAQZLxmoUs6IVBQ2qTPcrG/bkWqSuo9G1FNWPnJMbii2
 tacBHVM6ZUo4MP58d
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series refactors the vnt_rf_table_download function through
tree patches.

The first one removes the local variable "array" and all the memcpy
function calls because this copy operation from different arrays to this
variable is unnecessary.

The second patch replaces the "goto" statements with a direct "return ret"
as the jump label only returns the ret variable.

The third patch replaces three while loops with three calls to the
vnt_control_out_blocks function. This way avoid repeat a functionality
that already exists.

Changelog v1 -> v2
- Modify the commit changelog of the first patch to clarify the change as
  Joe Perches suggested.

Oscar Carter (3):
  staging: vt6656: Remove the local variable "array"
  staging: vt6656: Use return instead of goto
  staging: vt6656: Remove duplicate code in vnt_rf_table_download

 drivers/staging/vt6656/rf.c | 85 +++++++------------------------------
 1 file changed, 16 insertions(+), 69 deletions(-)

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

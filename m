Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B517CD0A7A
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 11:01:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A93D88654C;
	Wed,  9 Oct 2019 09:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FiqwHtYvcdSC; Wed,  9 Oct 2019 09:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B1AC8648E;
	Wed,  9 Oct 2019 09:01:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A3121BF593
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8693C8660D
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 09:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xk03yPNnIMWO for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 09:00:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD64686439
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 09:00:58 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x998xQb1143308;
 Wed, 9 Oct 2019 09:00:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=OhdyKt4+TAbOsTAghvzAKAsk/Da/BqDj0mmBnOZc3lM=;
 b=cIIE7xU+fUibmd6UCGHqvqvRJPtS4/9JeEFC3RhWFIMHAnxlXp14cu8EXXFs05XTe0X9
 hqH4mVE466xPAlHJigTeu1aVHAnVa3Oco8XeY/+Z7yZ3m7LHGJxjx3h0F1Idx0N1jA+k
 Ymeq1+WmPV6WTgMC2EPr875aRUTIh9i/EsLbVdhgyX3lLt8AUtvp5+pIz+1RtRBVnHLv
 +UDFoFr3S4DGt3ttZpQlk6AQfUBxKiC1XgzSo5dn947jEMoslFxLLOEtBg3D9oNS9Qas
 ilCkxPnkCjVyJRFW02mQqFbfcSMIdyWtTJf7ud6JsvNCcVtFN2pAUChjXUFE5juQCWE0 ZQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2vek4qjq4h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 09:00:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x998s2t8067610;
 Wed, 9 Oct 2019 09:00:56 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2vh5ca3kva-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 09:00:55 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9990spk016373;
 Wed, 9 Oct 2019 09:00:54 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 02:00:54 -0700
Date: Wed, 9 Oct 2019 12:00:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@01.org,
 =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: [staging:staging-testing 55/111] drivers/staging/wfx/wfx.h:91
 wdev_to_wvif() warn: potential spectre issue 'wdev->vif' [r] (local cap)
Message-ID: <20191009090048.GA13286@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090085
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090086
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
 kbuild-all@01.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git =
staging-testing
head:   d49d1c76b96ebf39539e93d5ab7943a01ef70e4f
commit: 9bca45f3d6924f19f29c0d019e961af3f41bdc9e [55/111] staging: wfx: all=
ow to send 802.11 frames

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

New smatch warnings:
drivers/staging/wfx/wfx.h:91 wdev_to_wvif() warn: potential spectre issue '=
wdev->vif' [r] (local cap)
drivers/staging/wfx/data_tx.c:479 wfx_tx_get_raw_link_id() warn: signedness=
 bug returning '(-2)'

# https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit=
/?id=3D9bca45f3d6924f19f29c0d019e961af3f41bdc9e
git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/greg=
kh/staging.git
git remote update staging
git checkout 9bca45f3d6924f19f29c0d019e961af3f41bdc9e
vim +91 drivers/staging/wfx/wfx.h

e16e7f0716a6ba J=E9r=F4me Pouiller 2019-09-19  80  =

f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  81  static inline struct wfx=
_vif *wdev_to_wvif(struct wfx_dev *wdev, int vif_id)
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  82  {
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  83  	if (vif_id >=3D ARRAY_S=
IZE(wdev->vif)) {
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  84  		dev_dbg(wdev->dev, "re=
questing non-existent vif: %d\n", vif_id);
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  85  		return NULL;
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  86  	}

		vaf_id =3D array_index_nospec(wdev->vif, ARRAY_SIZE(wdev->vif)); ?

f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  87  	if (!wdev->vif[vif_id])=
 {
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  88  		dev_dbg(wdev->dev, "re=
questing non-allocated vif: %d\n", vif_id);
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  89  		return NULL;
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  90  	}
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19 @91  	return (struct wfx_vif =
*) wdev->vif[vif_id]->drv_priv;
f4a71ba8753d94 J=E9r=F4me Pouiller 2019-09-19  92  }

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

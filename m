Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D95D7201
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 11:19:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75253875D4;
	Tue, 15 Oct 2019 09:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EtMwsrK8o2-4; Tue, 15 Oct 2019 09:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B0A28758F;
	Tue, 15 Oct 2019 09:19:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 90B421BF271
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 09:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8D6E1845C3
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 09:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ixX4Nm4unBon for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 09:19:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE4CF845C0
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 09:19:45 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9F9DCsw015460;
 Tue, 15 Oct 2019 09:19:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2019-08-05; bh=XOS9EXMDrfcapa0yCPVW2tWQBekI+jT6QODKtdRu1OU=;
 b=Qr7X/dmJF+BJSy/GF+LmiqYPiI+bOcgWHfpXFx/5BLQ6rY4195UOzl0XLlo993ZEA5j3
 6nI7jwwM2pGULD13DKQRxvmtC76O8SlY9peYOEUcdupYGw52asJDIxLFPMdUe7DbdzFZ
 A0Mmjkwxv6LNYGWWYJm+EtDbhSUgOrbbUh4piVJWdYGu7kxyRJbOkk9GzowxQjvFIiNk
 JOMHwxkSnPB1PECWXFjn4AsQnzAnMIht/SOl3vWpQ7cTyn2Tdt8vpIKu1x1/CUvthX6+
 B7jI+RzhhZ6dQxmvyLZenQFzC+707MWvqQEvdezbZSa2KJuveo6jNiFlXKdq3P5noZ1g JA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2vk68ueh7b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 15 Oct 2019 09:19:40 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9F98DWJ147688;
 Tue, 15 Oct 2019 09:19:39 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2vnb0erxc9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 15 Oct 2019 09:19:39 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9F9JV6N021786;
 Tue, 15 Oct 2019 09:19:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 15 Oct 2019 09:19:30 +0000
Date: Tue, 15 Oct 2019 12:19:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v2 2/2] drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to
 DP bridge driver
Message-ID: <20191015091921.GC21344@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55295c49503a963f3417b917fd7163feb26ed0b6.1570760115.git.xji@analogixsemi.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9410
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910150086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9410
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910150086
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, kbuild-all@lists.01.org,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>,
 Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

[  These are automated text from the 0-day bot -dan ]

Hi Xin,

Thank you for the patch! Perhaps something to improve:

url:    https://github.com/0day-ci/linux/commits/Xin-Ji/dt-bindings-drm-bridge-anx7625-MIPI-to-DP-transmitter-binding/20191014-043019

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

New smatch warnings:
drivers/gpu/drm/bridge/analogix/anx7625.c:1274 anx7625_start_dp_work() error: uninitialized symbol 'sp_tx_lane_count'.

# https://github.com/0day-ci/linux/commit/152a82b6747f10d6c13c7a422173947c2f2e1aa2
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 152a82b6747f10d6c13c7a422173947c2f2e1aa2
vim +/sp_tx_lane_count +1274 drivers/gpu/drm/bridge/analogix/anx7625.c

152a82b6747f10 Xin Ji 2019-10-11  1253  static void anx7625_start_dp_work(struct anx7625_data *ctx)
152a82b6747f10 Xin Ji 2019-10-11  1254  {
152a82b6747f10 Xin Ji 2019-10-11  1255  	int ret;
152a82b6747f10 Xin Ji 2019-10-11  1256  	u8 buf[MAX_DPCD_BUFFER_SIZE];
152a82b6747f10 Xin Ji 2019-10-11  1257  	u8 hdcp_cap;
152a82b6747f10 Xin Ji 2019-10-11  1258  	struct device *dev = &ctx->client->dev;
152a82b6747f10 Xin Ji 2019-10-11  1259  	u8 sp_tx_bw; /* linktraining banwidth */
152a82b6747f10 Xin Ji 2019-10-11  1260  	u8 sp_tx_lane_count; /* link training lane count */
152a82b6747f10 Xin Ji 2019-10-11  1261  
152a82b6747f10 Xin Ji 2019-10-11  1262  	if (ctx->hpd_high_cnt >= 2) {
152a82b6747f10 Xin Ji 2019-10-11  1263  		DRM_DEV_DEBUG_DRIVER(dev, "anx7625 filter useless HPD\n");
152a82b6747f10 Xin Ji 2019-10-11  1264  		return;
152a82b6747f10 Xin Ji 2019-10-11  1265  	}
152a82b6747f10 Xin Ji 2019-10-11  1266  
152a82b6747f10 Xin Ji 2019-10-11  1267  	ctx->hpd_high_cnt++;
152a82b6747f10 Xin Ji 2019-10-11  1268  
152a82b6747f10 Xin Ji 2019-10-11  1269  	sp_tx_get_rx_bw(ctx, &sp_tx_bw);
152a82b6747f10 Xin Ji 2019-10-11  1270  
152a82b6747f10 Xin Ji 2019-10-11  1271  	sp_tx_aux_dpcdread_bytes(ctx, 0x00, 0x00, DPCD_MAX_LANE_COUNT,
152a82b6747f10 Xin Ji 2019-10-11  1272  				 1, &sp_tx_lane_count);
                                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Smatch thinks sp_tx_aux_dpcdread_bytes() can fail and we don't check
for errors.

152a82b6747f10 Xin Ji 2019-10-11  1273  
152a82b6747f10 Xin Ji 2019-10-11 @1274  	sp_tx_lane_count = sp_tx_lane_count & 0x1f;
152a82b6747f10 Xin Ji 2019-10-11  1275  	sp_tx_aux_dpcdread_bytes(ctx, 0x06, 0x80, 0x28, 1, buf);/* read Bcap */
152a82b6747f10 Xin Ji 2019-10-11  1276  
152a82b6747f10 Xin Ji 2019-10-11  1277  	hdcp_cap = buf[0] & 0x01;
152a82b6747f10 Xin Ji 2019-10-11  1278  

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

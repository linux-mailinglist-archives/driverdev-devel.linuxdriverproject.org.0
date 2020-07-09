Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A17219C0F
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 11:26:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 919C5263FC;
	Thu,  9 Jul 2020 09:26:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Np-O3DZ2CqCJ; Thu,  9 Jul 2020 09:26:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 682162286F;
	Thu,  9 Jul 2020 09:26:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A43F1BF82F
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 09:26:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 672C986C72
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 09:26:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uTmqQdPnyABT for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 09:26:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8D8386BA6
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 09:26:36 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0699GfuO089130;
 Thu, 9 Jul 2020 09:26:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=YI3HqKZAF3vgdZXRndWPwjtUp6yBBgCCCmbBQucBies=;
 b=j+aOtIU+oquWqmEV1/xiCJvEnutZ8u8J0WAo9a+zKmAy6A/uICXiGufpt8ZKLxx9C+9g
 HWou7cgzv76SlcCHciAUrb+2QKmUW3WnsMRewcTri19rRcUf4TCJJiyS/zvPvgAR8cl3
 Rbo3vYGlCj+cxbQGvGkfOJFe8RR7TWjOdTr1EH1Tu6nuhJeZ6YkE4ltK4SpeLhjACwG/
 76Px2uifag9TcuEDoZd2QQWWIeuXYlJWiX1E7esf8nU8imh+2P1E2tzPiWd0AkkLdOKG
 2Q/X+bavbbm63xEGPWogb5VTVZYFo6IhkOReZHI4Rr/YCs7gRxNr7BOzTnoSB8DK3LH/ Lw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 325y0agkcn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 09 Jul 2020 09:26:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0699DHFP119420;
 Thu, 9 Jul 2020 09:26:35 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 325k3gk0x8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Jul 2020 09:26:35 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0699QYIj013448;
 Thu, 9 Jul 2020 09:26:34 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 09 Jul 2020 02:26:34 -0700
Date: Thu, 9 Jul 2020 12:26:29 +0300
From: <dan.carpenter@oracle.com>
To: jerome.pouiller@silabs.com
Subject: [bug report] staging: wfx: load the firmware faster
Message-ID: <20200709092629.GA15532@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9676
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0
 mlxlogscore=999 bulkscore=0 spamscore=0 mlxscore=0 adultscore=0
 suspectscore=3 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007090074
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9676
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1011 mlxlogscore=999
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=3
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007090074
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello J=E9r=F4me Pouiller,

The patch a9408ad79ff3: "staging: wfx: load the firmware faster" from
Jul 1, 2020, leads to the following static checker warning:

	drivers/staging/wfx/fwio.c:192 upload_firmware()
	error: uninitialized symbol 'bytes_done'.

drivers/staging/wfx/fwio.c
   177  static int upload_firmware(struct wfx_dev *wdev, const u8 *data, si=
ze_t len)
   178  {
   179          int ret;
   180          u32 offs, bytes_done;
                          ^^^^^^^^^^

   181          ktime_t now, start;
   182  =

   183          if (len % DNLD_BLOCK_SIZE) {
   184                  dev_err(wdev->dev, "firmware size is not aligned. B=
uffer overrun will occur\n");
   185                  return -EIO;
   186          }
   187          offs =3D 0;
   188          while (offs < len) {
   189                  start =3D ktime_get();
   190                  for (;;) {
   191                          now =3D ktime_get();
   192                          if (offs + DNLD_BLOCK_SIZE - bytes_done < D=
NLD_FIFO_SIZE)
                                                             ^^^^^^^^^^
Uninitialized.

   193                                  break;
   194                          if (ktime_after(now, ktime_add_ms(start, DC=
A_TIMEOUT)))
   195                                  return -ETIMEDOUT;
   196                          ret =3D sram_reg_read(wdev, WFX_DCA_GET, &b=
ytes_done);
                                                                        ^^^=
^^^^^^^
too late.  Hashtag Sad Face.

   197                          if (ret < 0)
   198                                  return ret;
   199                  }
   200                  if (ktime_compare(now, start))
   201                          dev_dbg(wdev->dev, "answer after %lldus\n",
   202                                  ktime_us_delta(now, start));
   203  =

   204                  ret =3D sram_write_dma_safe(wdev, WFX_DNLD_FIFO +
   205                                            (offs % DNLD_FIFO_SIZE),
   206                                            data + offs, DNLD_BLOCK_S=
IZE);
   207                  if (ret < 0)
   208                          return ret;
   209  =

   210                  // WFx seems to not support writing 0 in this regis=
ter during
   211                  // first loop
   212                  offs +=3D DNLD_BLOCK_SIZE;
   213                  ret =3D sram_reg_write(wdev, WFX_DCA_PUT, offs);
   214                  if (ret < 0)
   215                          return ret;
   216          }
   217          return 0;
   218  }

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

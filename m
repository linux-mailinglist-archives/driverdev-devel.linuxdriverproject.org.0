Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA2630D67F
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 10:43:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F428867C2;
	Wed,  3 Feb 2021 09:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQQlrv14uQMZ; Wed,  3 Feb 2021 09:43:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 216A386796;
	Wed,  3 Feb 2021 09:43:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 925AF1BF86D
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 09:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 874E920520
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 09:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aq-9lm9d4hc1 for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 09:42:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B5C3204F8
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 09:42:58 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1139TpYi101352;
 Wed, 3 Feb 2021 09:42:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=p3SPZC1+gixAVgsSRpHEGEIkP0jvglpNykdPKLJqNgQ=;
 b=ylbX1rUW/+K/V4hh/pAAFWYPK2PVhyGFNnKqhjRyY/C27Oz1lIVQpz3MYG7q07xxwWgR
 yMnh6rLwr5X2rMxqpSc+50VNHvUrJZnjf3bb1LwuKLc2I/6s2PWgcM2ZKvizcz5+9Rph
 i94pbQKtixEeDdkklVoWqH+3iA+Av2ccOToiFhj0q5/y5HzNjJC/Zy6q89/PDRqVoON3
 c3pK6HF/ztjZ1dcyFdOebQdCQ9xRTCXEEpMHVAdw/zRWiHEk10OLPfq3RLYiYLsu+zXm
 FFmQKDY23iEt47AlSoR4NR0LeL6iUwdLenDpgPpdrcPOPWRJpQI+CtRSmnyjV76ry2V4 QA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 36fs45837t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Feb 2021 09:42:58 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1139UFpO041757;
 Wed, 3 Feb 2021 09:42:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 36dh7t378c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Feb 2021 09:42:56 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 1139gtNK029198;
 Wed, 3 Feb 2021 09:42:56 GMT
Received: from mwanda (/10.175.206.62) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 03 Feb 2021 01:42:55 -0800
Date: Wed, 3 Feb 2021 12:42:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: coiby.xu@gmail.com
Subject: [bug report] staging: qlge: Initialize devlink health dump framework
Message-ID: <YBpwGqe64phqNAYL@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9883
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 suspectscore=0 spamscore=0 mlxlogscore=718 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102030060
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9883
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 bulkscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 mlxlogscore=636
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102030060
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Coiby Xu,

The patch 953b94009377: "staging: qlge: Initialize devlink health
dump framework" from Jan 23, 2021, leads to the following static
checker warning:

	drivers/staging/qlge/qlge_devlink.c:163 qlge_health_create_reporters()
	error: uninitialized symbol 'reporter'.

drivers/staging/qlge/qlge_devlink.c
   151  void qlge_health_create_reporters(struct qlge_adapter *priv)
   152  {
   153          struct devlink_health_reporter *reporter;
   154          struct devlink *devlink;
   155  
   156          devlink = priv_to_devlink(priv);
   157          priv->reporter =
   158                  devlink_health_reporter_create(devlink, &qlge_reporter_ops,
   159                                                 0, priv);
   160          if (IS_ERR(priv->reporter))
   161                  netdev_warn(priv->ndev,
   162                              "Failed to create reporter, err = %ld\n",
   163                              PTR_ERR(reporter));

Obviously the static checker is correct because we initialized
"priv->reporter" instead of "reporter".

It's not clear to me how "reporter" is used.  Presumably this should be:

	reporter = devlink_health_reporter_create(devlink, &qlge_reporter_ops,
						  0, priv);
	if (IS_ERR(reporter)) {
		netdev_warn(priv->ndev,
			    "Failed to create reporter, err = %ld\n",
			    PTR_ERR(reporter));
		return;
	}
	priv->reporter = reporter;

But I can't actually find where "priv->reporter" is checked against
NULL.  There should be some NULL checks, right?

   164  }

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

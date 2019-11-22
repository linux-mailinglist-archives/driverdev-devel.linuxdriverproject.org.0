Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 899EB107169
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Nov 2019 12:32:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8602B88236;
	Fri, 22 Nov 2019 11:32:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m9PK6RzkzUmt; Fri, 22 Nov 2019 11:32:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53A6D8811A;
	Fri, 22 Nov 2019 11:32:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A98B21BF425
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 11:32:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A5C3688AE8
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 11:32:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sUSfjAz6TIjH for <devel@linuxdriverproject.org>;
 Fri, 22 Nov 2019 11:32:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EC24A888E5
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 11:32:20 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMBT9Uk156708;
 Fri, 22 Nov 2019 11:32:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=JmL0CFln1gb8GKNlxFUBDthYLpQkxi+UoOrwYV1q6BU=;
 b=qtRkj0I3x3PXuFvBNFB4QBbgj3ZkZQTwvNLBnTZ9OfAmLIkAAIH/U2zn8k9dHGriMRRg
 m2w6lv+2FxtjR6XqdQHsOESue+TRNF6J1bvgGWtPaALzW9TXbmWbG7iVdtR/2qH25h7B
 hvNS2+s+HfSBH4Tp1FaIcHrwpMf/mPc3Jtc4BXa4bQvcRpQrULkdGG67UssjTFqZkDpp
 WZJT9upCfOE1Wd/51ehm9dI8x8+OBDLZgj+r9fcJEllGCbtNew1TYRs9g+mPUkA+yQ98
 7qDO2GgFtFGkxXP8Rra1yRz6kgpF1IMzDiSDlkjuByMJ/guv5jMJEpkj1cr/OaRyjoGF 1Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2wa92qa171-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 11:32:19 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAMBNUFN111619;
 Fri, 22 Nov 2019 11:32:18 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2wec28r6yr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Nov 2019 11:32:18 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAMBWHqx028821;
 Fri, 22 Nov 2019 11:32:17 GMT
Received: from kadam (/41.210.154.155) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 22 Nov 2019 03:32:16 -0800
Date: Fri, 22 Nov 2019 14:32:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: dvyukov@google.com
Subject: monthly summary emails
Message-ID: <20191122113205.GH5604@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=592
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911220103
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9448
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=659 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911220104
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
Cc: devel@driverdev.osuosl.org, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dmitry,

I help maintain drivers/staging.  Would it be possible to send us a
monthly summary of outstanding staging bugs?  I never remember to check
the website.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

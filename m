Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D49AA1C72A2
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 16:18:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D033087F7F;
	Wed,  6 May 2020 14:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdJIIKpwmtmo; Wed,  6 May 2020 14:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82ECA87F00;
	Wed,  6 May 2020 14:18:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D5121BF31D
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 14:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7970B88644
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 14:18:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id galCZEkkklrk for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 14:18:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 08D6F88639
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 14:18:42 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 046EHlit110031;
 Wed, 6 May 2020 14:18:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=3R5fRWwWCvg3X2Ej0wqK3qbEy6u+JOq3Eumk9SuBbLg=;
 b=Ye8U8cvxibIG5QD9Mmcsyn0VPNdBvJbyVXf+SspKBigDwU2LyWoCQR6d8NYETdtowlYt
 DQ2nmqErdpNronhN5Uu5DrmhSjPxdQZREkOCJ1nZ2+zheEmxbT+czspV4RkrJXkq828s
 rUgHQyvGvgVq3swp9pXxc6mKU+cJEyT2QOj30OymaydiYmEEw+dQh6P14n9a7VgCvM/d
 3lAtpJ8a+Lu3nAuZ7Xp/oLjPMkWhk/641sl/KRqVOefu4x/kq4/BZugFVsYfRftZPif5
 2EVC4xffJx+o4AEjOCSn1e+5KxNG3qqmZckX2RfmqXZ2CBtBVmKaCfBaa2QThg2R0rZ5 Ww== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 30s09ranjv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 May 2020 14:18:38 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 046EGoFH054388;
 Wed, 6 May 2020 14:18:37 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 30sjdvma1s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 May 2020 14:18:37 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 046EIaeu029292;
 Wed, 6 May 2020 14:18:36 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 07:18:35 -0700
Date: Wed, 6 May 2020 17:18:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH -next v2] staging: kpc2000: fix error return code in
 kp2000_pcie_probe()
Message-ID: <20200506141829.GM1992@kadam>
References: <20200506125255.90336-1-weiyongjun1@huawei.com>
 <20200506134735.102041-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506134735.102041-1-weiyongjun1@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005060115
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005060115
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 simon@nikanor.nu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fantastic.  Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

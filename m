Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6624BD9CD
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 10:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6FCAE221A9;
	Wed, 25 Sep 2019 08:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cy1PfsipKRNV; Wed, 25 Sep 2019 08:27:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37A01204A2;
	Wed, 25 Sep 2019 08:27:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65AC51BF3EC
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 08:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 622AE864D2
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 08:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bte25CZcuttf for <devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:27:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F144F81B79
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 08:27:25 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8P8NhEW152269;
 Wed, 25 Sep 2019 08:27:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=g/QnWL633DATk/D0Ttai9VtCMe1kqYKn1pLuJll4508=;
 b=dXIBxHEGBDzji4oALJi0bO8A0iVZhCmtnvhVfuFS1EDWgqwfzbr1SuZoZPLpF0u3lFJ2
 hql7W2xIVmZhjoITH0Tnu6YT7xCMSpPeYpHJtpYsj8E4wjZa4ncqEOzHFbMHd14kvjsA
 CLbHGtPlVsogTcl5D6i9nc6C/a9fOfl5abn5ar4GnfkbF0jDw42Oaoz7+2Y1MD0Q8DJK
 pgJGtkS/vHMFnhRNFKPmnJZ19BiHN7yD5+Oh81hJV1yriYaqHH6HkUqwQW7qXpANR8vW
 TZQIFmfWJLqtmKHbCktGmaJXwYpbUfPG26gvH6+ElYIBGB1WJWrcSMDzVHRMZD/7A/m9 Tg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2v5cgr306j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 25 Sep 2019 08:27:25 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8P8OTAT029532;
 Wed, 25 Sep 2019 08:27:24 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2v82q90510-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 25 Sep 2019 08:27:24 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8P8RNE0007540;
 Wed, 25 Sep 2019 08:27:23 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 25 Sep 2019 01:27:22 -0700
Date: Wed, 25 Sep 2019 11:27:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerry Lin <wahahab11@gmail.com>
Subject: Re: [PATCH v2] staging: olpc_dcon: fix wrong dependencies in Kconfig
 file
Message-ID: <20190925082715.GC27389@kadam>
References: <20190925074243.GA24947@compute1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925074243.GA24947@compute1>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9390
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=965
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909250086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9390
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909250086
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
Cc: devel@driverdev.osuosl.org, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jon Nettleton <jon.nettleton@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks!

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

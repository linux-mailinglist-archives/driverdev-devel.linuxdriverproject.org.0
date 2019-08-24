Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCF39BD1C
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Aug 2019 12:46:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26A1287C94;
	Sat, 24 Aug 2019 10:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DwxkTA1lD5Zb; Sat, 24 Aug 2019 10:46:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 581FF87C5A;
	Sat, 24 Aug 2019 10:46:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF2AE1BF377
 for <devel@linuxdriverproject.org>; Sat, 24 Aug 2019 10:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BBB7320434
 for <devel@linuxdriverproject.org>; Sat, 24 Aug 2019 10:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27bXYaWuJMRk for <devel@linuxdriverproject.org>;
 Sat, 24 Aug 2019 10:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 355BC2042C
 for <devel@driverdev.osuosl.org>; Sat, 24 Aug 2019 10:46:39 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7OAhg6A001982;
 Sat, 24 Aug 2019 10:46:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=6Xe8d4/Qc67NKEUdvz915wuZpclJkk7CNF5g6iXqF5Q=;
 b=TxxVAkKor0C492SSz9eUNsWgdO7WiVZGpqc89E/qjzLXRT8C6XdsdwM44hfIBf1ZHX2l
 YTZ1MILMW6ZdZqRQUfkD7TIQnZAbB9q3QvhpwLf6w6njntnO27Z9Uicat2KZNBB3EWMu
 KBorrXzmbqdZuMIaZDfJxRVhvwIdRh5+AuQ5L5NYIaUY+A+BgjaHH7yIb++pH1/7MxAZ
 iC+ETyIB2NFoaignvx86k4a5Jk6oMaKhts9NcK8ktGkOGDIZmzcytPMIeMGLUPjaY4sf
 AK+5UiJLCIieMGFrDmD8fQt1NtHneSZoG9ybEkhaCRtcyjcLDEmkCpPDUd/HFgRzolZd BQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2ujw6yrwb0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 24 Aug 2019 10:46:36 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7OAhXrv145624;
 Sat, 24 Aug 2019 10:46:36 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2ujw6t78pu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 24 Aug 2019 10:46:36 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7OAkUYd007167;
 Sat, 24 Aug 2019 10:46:30 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 24 Aug 2019 03:46:29 -0700
Date: Sat, 24 Aug 2019 13:46:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Subject: Re: [PATCH] staging: vt6656: Use common error handling code in
 vnt_alloc_bufs()
Message-ID: <20190824104620.GC23408@kadam>
References: <91e8a9b7-e79d-dafc-10b8-dd79eb59eff9@web.de>
 <20190823145540.GA2536@qd-ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823145540.GA2536@qd-ubuntu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9358
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=943
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908240119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9358
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908240120
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Markus Elfring <Markus.Elfring@web.de>,
 Forest Bond <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The original code is fine.

There was no chance we were going to apply the patch so there is no need
for any discussion.  I don't know why Markus sent it when he knows.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

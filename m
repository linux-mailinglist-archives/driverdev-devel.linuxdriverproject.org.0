Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1778713D423
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 07:12:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 328F386256;
	Thu, 16 Jan 2020 06:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IExYEw7bnYNa; Thu, 16 Jan 2020 06:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E69586447;
	Thu, 16 Jan 2020 06:11:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A93A1BF277
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 06:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96AE7203CA
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 06:11:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VlvdvCuHQJtd for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 06:11:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id EAB68203BD
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 06:11:46 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G63DxY035388;
 Thu, 16 Jan 2020 06:11:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=xjE3IP7WzESU5TP9kgUELVK4WlYjwn2z26pD654QgcQ=;
 b=lpl41Zy3YkZxMvSqxvV4cKNHgya0dXkDV9/Cplwla3b8gKsbVW6JT1+magtlNvJNdJ1s
 DshRWRmBMc+k3msaQnZIX6qEIqV99L2Ln17YfO9TS+NUsYFWr3ftisPJXnJctZPp107W
 LrtxLSZkcfcdc7z1IdrlHhNCrJ0ZD43sjJYsZ1bEl3ekQ//4GFZdq4vpRKYXpx1mY94S
 NtKB2Gm5nR/AlKS83noy+utr6uYeHYtoc37FjgEDcHU9xQBoZRLy3nnTVXe3Ycwh1t5E
 mI8KxF6iOCGcymlpHjoDUSrcF25owBJ+jUoRE2dQHYW5500x5uG6GQz6JD13JU3g3k5K Lw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2xf74sgdrr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2020 06:11:45 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G63mOb100044;
 Thu, 16 Jan 2020 06:11:45 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2xj1atguap-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2020 06:11:44 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00G6BiKJ024820;
 Thu, 16 Jan 2020 06:11:44 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 15 Jan 2020 22:11:43 -0800
Date: Thu, 16 Jan 2020 09:12:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Felipe Cardoso Resende <felipecardoso.fcr@gmail.com>
Subject: Re: [PATCH] Remove warning: "dubious: x | !y" detected by sparse
Message-ID: <20200116061246.GB21151@kadam>
References: <20200115012515.GA16012@felipe-pc> <20200115062156.GF3719@kadam>
 <20200116030521.GA2258@felipe-pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116030521.GA2258@felipe-pc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=873
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001160051
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=929 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001160051
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
 Geordan Neukum <gneukum1@gmail.com>, Hao Xu <haoxu.linuxkernel@gmail.com>,
 Jamal Shareef <jamal.k.shareef@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sounds reasonable.  Just resend with the fixed commit message.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

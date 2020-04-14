Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8601A899E
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 20:32:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 82D322214F;
	Tue, 14 Apr 2020 18:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zzZHk2Adpvjz; Tue, 14 Apr 2020 18:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E945D22098;
	Tue, 14 Apr 2020 18:32:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30BA41BF599
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 18:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D4FF86ECC
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 18:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3tBIOkG+g50o for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 18:32:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75BE486EC9
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 18:32:33 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03EIABfO076585;
 Tue, 14 Apr 2020 18:32:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=GTvnzmPIuo+zTA3LV2i2vcOkGvW+n0eKPUcwXXWxyHQ=;
 b=Lv1rUkd0In8etyKFdwJQxVsGJI9E/m4wkPCei6qvgpMHTkjq79ezUkpDfzxL0ULw84Zd
 CzideGZzS16NPhzCt00rz5zjoFeRAzgUHat4N8d4snKi+8AVseHWf+ENxBiH+wvamMVD
 imcNE06zwyq1Auk/yX/ZkMXg5+fLu3pZTYprduPzMtYu3MKJ17rFItAP5Xvo3fN+/KAy
 sysPKjMlaFpJuf8ACFcuufkyzxnFe2oAAkUqyXon17LUoQPPfVKY+0ZNLRbT3pOVFtzK
 CpAJGmWqcdD54wJffz4Z5HFJ6z5ZKHTVC5t8BhhzJzIO80V9mdTSm0+/vyZqtIAWrWum Cw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 30b5um6mdq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 18:32:31 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03EI77AP155020;
 Tue, 14 Apr 2020 18:32:30 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 30bqm2j9hm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 18:32:30 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03EIWSSx020662;
 Tue, 14 Apr 2020 18:32:28 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Apr 2020 11:32:27 -0700
Date: Tue, 14 Apr 2020 21:32:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 1/2] staging: rtl8192u: Refactoring setKey function
Message-ID: <20200414181812.GE14511@kadam>
References: <20200413030129.861-1-c.cantanheide@gmail.com>
 <20200414123326.GG1163@kadam>
 <d3725a08531898adc1bfb1e6d875888c434b42d6.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3725a08531898adc1bfb1e6d875888c434b42d6.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9591
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=915
 adultscore=0 mlxscore=0 phishscore=0 malwarescore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004140131
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9591
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 bulkscore=0 mlxscore=0
 mlxlogscore=983 lowpriorityscore=0 impostorscore=0 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004140131
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
Cc: devel@driverdev.osuosl.org,
 Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, nishkadg.linux@gmail.com,
 navid.emamdoost@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 14, 2020 at 09:01:18AM -0700, Joe Perches wrote:
> On Tue, 2020-04-14 at 15:33 +0300, Dan Carpenter wrote:
> > On Mon, Apr 13, 2020 at 03:01:28AM +0000, Camylla Goncalves Cantanheide wrote:
> > > +
> > > +	for (i = 2; i < CAM_CONTENT_COUNT; i++) {
> > > +		write_nic_dword(dev, WCAMI, *keycontent++);
> > 
> > This code was wrong in the original as well, but now that I see the bug
> > let's fix it.  CAM_CONTENT_COUNT is 8.  8 - 2 = 6.  We are writing 6
> > u32 variables to write_nic_dword().  But the *keycontent buffer only has
> > 4 u32 variables so it is a buffer overflow.
> 
> Did you find the overflow with smatch?

No.  Smatch isn't smart enough to understand that *(keycontent + i - 2)
is an array overflow.  It thinks *(keycontent + i) is an array overflow
but the "- 2" confuses it.  Also Smatch isn't smart enough to parse the
*keycontent++.  It takes a shortcut when it parses loops.

To be honest, I just didn't like starting the loop from 2 and was trying
to see if there was a better define to use.

I agree that your solution of making the buffer larger is probably the
safest approach given that none of us really know the hardware.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

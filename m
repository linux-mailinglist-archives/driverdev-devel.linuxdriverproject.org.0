Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FC8E78EF
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 20:08:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16B8087553;
	Mon, 28 Oct 2019 19:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmEGOrQljBZx; Mon, 28 Oct 2019 19:08:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD9A48757E;
	Mon, 28 Oct 2019 19:08:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F40451BF406
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 19:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD65185EF5
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 19:08:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yGd-ne2Gibcb for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 19:08:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2781485DF5
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 19:08:20 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9SJ4IBK174536;
 Mon, 28 Oct 2019 19:08:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=z/WBdgd5CumTKSeC5lKYgmAwQ86vtbHZtOeSgLdHgTs=;
 b=EvlJKEPBs2sB/16Ae/bUSdzWs/+UiXnilYHGt8Po5EoXIHyMy70H4LnMt6mKWWEAU1iP
 4cGTEun1iJBuCLqEsZpITSfqn6ISM/MA9Ja8DkVlSQna0tQTJgOI5yEQt6JfyxwOzZcu
 Ax++95pMpn0uH6vbDj4g0BsVNku/w1ofdBuxsZDJzaqf5kKYombNSf5VxJloHJd1wqy8
 gr6iCNVJICwToCpuXW0xey6aHBqfEul2tVpEvNk165vKg2IKy27+1Ox+kOVZ/ELHhZvV
 NemeF437t0sXSoLvmy/FunTiaJc/KwEGodzL023E81RjfZtfrVO6GzV4/3W1wty2irCV ig== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2vvumf8xth-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Oct 2019 19:08:18 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9SJ4H3Q014486;
 Mon, 28 Oct 2019 19:08:17 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vw09ga07k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Oct 2019 19:08:17 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9SJ8FBk003101;
 Mon, 28 Oct 2019 19:08:15 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 28 Oct 2019 12:08:15 -0700
Date: Mon, 28 Oct 2019 22:08:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Davidlohr Bueso <dave@stgolabs.net>
Subject: Re: [PATCH] staging: vc04_services: replace g_free_fragments_mutex
 with spinlock
Message-ID: <20191028190804.GG1944@kadam>
References: <20191027221530.12080-1-dave@stgolabs.net>
 <20191028155354.s3bgq2wazwlh32km@linux-p48b>
 <20191028162412.GA321492@kroah.com>
 <20191028163537.b2pspgdl6ceevcxv@linux-p48b>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028163537.b2pspgdl6ceevcxv@linux-p48b>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9424
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=866
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910280181
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9424
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=952 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910280182
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 wahrenst@gmx.net, linux-kernel@vger.kernel.org, eric@anholt.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 28, 2019 at 09:35:37AM -0700, Davidlohr Bueso wrote:
> On Mon, 28 Oct 2019, Greg KH wrote:
> > This is obviously not in a format I can apply it in :(
> 
> What are you talking about? I sent you the original patch,
> then Cc'ed the drivers mailing list.  So you still have a
> patch you can apply... this is quite a common way of doing
> things (Ccing for future references to someone or another
> ml). I don't understand why you are hairsplitting over this
> patch.
> 

I don't have the original patch either.  Only the corrupted one...  Maybe
you did it as html and it was rejected?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B51CFC60
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 16:27:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7124F876DB;
	Tue,  8 Oct 2019 14:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sMqyOTU5oHQJ; Tue,  8 Oct 2019 14:27:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37ED1874E9;
	Tue,  8 Oct 2019 14:27:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C32C1BF3C8
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 14:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 35EFF87D7F
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 14:27:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DxUz7Sa87rPP for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 14:27:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AC98F87D3D
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 14:27:34 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98E9LSo051875;
 Tue, 8 Oct 2019 14:27:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=GfyLIyqEXxIaQ2ACVoOP4oi4Ygck8YSsBITIQGuPxKk=;
 b=ZZO3tmZ3gQVSLd44qJDLr14aTBJ+45hTD+0oLHKe/QFJkx0wt0+8Il93UI62MOadCgun
 ZJ6zZ+pZDxJ8ldFJczwGgP3YcL323c84s04yGngHjtNTGa3YupuII/vmevf4fbw8yyKz
 CsjdpASsKjfV/5bpfHS0lbMEFOtckUmr0sWbL8zxzSj4oARMSlbtv2EQtc5RYqqE7g5D
 RYhNfxPXQRVlSBJbtYj8jpV/KpNztCyDVpYY+46TBuTAFVcve+zYzNa73qQMx+djrK++
 E/F1OxThFaX+iDXcuPfjZDmHVJ//uYpVYONh2FpX9igLgaDKbimL1ytGoG0Pp670fdXc oA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2vektrde4w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 14:27:29 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98E92iE155480;
 Tue, 8 Oct 2019 14:25:28 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vg206ds9x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 14:25:28 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x98EPP4U015274;
 Tue, 8 Oct 2019 14:25:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 08 Oct 2019 07:25:24 -0700
Date: Tue, 8 Oct 2019 17:25:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matteo Croce <mcroce@redhat.com>
Subject: Re: [PATCH] staging: vchiq: don't leak kernel address
Message-ID: <20191008142517.GO21515@kadam>
References: <20191008123346.3931-1-mcroce@redhat.com>
 <20191008131518.GH25098@kadam>
 <CAGnkfhxefH+3YKDWQMCOYoj1skcq6rUmHuiHZQ-76YixFqbQjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGnkfhxefH+3YKDWQMCOYoj1skcq6rUmHuiHZQ-76YixFqbQjg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=748
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080132
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=830 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080132
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
 LKML <linux-kernel@vger.kernel.org>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 04:21:54PM +0200, Matteo Croce wrote:
> On Tue, Oct 8, 2019 at 3:16 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > The subject doesn't match the patch.  It should just be "remove useless
> > printk".
> >
> > regards,
> > dan carpenter
> >
> 
> Well, it avoids leaking an address by removing an useless printk.
> It seems that GKH already picked the patch in his staging tree, but
> I'm fine with both subjects, really,

The address wasn't leaked because it was already %pK.  The subject
says there is an info leak security problem, when the opposite is true.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

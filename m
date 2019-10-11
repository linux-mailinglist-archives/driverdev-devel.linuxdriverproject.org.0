Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E08D9D3DD0
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 12:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A438F8888D;
	Fri, 11 Oct 2019 10:58:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FxMkWLpfOrMi; Fri, 11 Oct 2019 10:58:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E72E388876;
	Fri, 11 Oct 2019 10:58:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BC781BF2A2
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 10:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4794A203AB
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 10:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BsqhkdlfxFgE for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 10:58:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D89F20396
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 10:58:53 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BAwgEI021085;
 Fri, 11 Oct 2019 10:58:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=2+Wa7wS3oWd2Zr0vdoPEF6aAnQQ9hFaPuFRwZk86Ews=;
 b=UFFCIe76+UOJRY1dNMZ3/CmqTTe2zkODOKNfGsAD7Hpu/Uieujl/YtNlKrdTtSc0g9UY
 NMeNfT+gETYtv1xyDdP+JuioI6HJOFpqVL6WfUu0Br7AjeHb5/5ZHoqSJqk+Zb7K0Luo
 Rx74KWa1PaB2ZlFnp0LwoX7vl7TXU/7TJPMhW0xMgF7KnAACY44+5gnokg1ZVDPWsAUA
 KuNBx1Sw5CYclIEmexZpxsAKY09cDcPCa6AXc5he//Zw0yE5BNBSOkOm5N+uGyhcmyOm
 9MK0lbIY0mQUwvHx7Cza8vBTxXYA6BVAUbdiyFovavL0ZcErB4SLuWOsKHIsInGKGeb6 XA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2vek4r0tvy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 10:58:52 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BAwpmJ012004;
 Fri, 11 Oct 2019 10:58:51 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vj9quk4jf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 10:58:51 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9BAwBaL032347;
 Fri, 11 Oct 2019 10:58:11 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 11 Oct 2019 10:58:11 +0000
Date: Fri, 11 Oct 2019 13:58:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: octeon: remove typedef
 declaration for cvmx_wqe_t
Message-ID: <20191011105804.GB4774@kadam>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <1b16bc880fee5711f96ed82741f8268e4dac1ae6.1570773209.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910110817340.2662@hadrien>
 <20191011085952.GA9748@wambui>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011085952.GA9748@wambui>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110105
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1031
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910110105
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
Cc: devel@driverdev.osuosl.org, Julia Lawall <julia.lawall@lip6.fr>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 11:59:52AM +0300, Wambui Karuga wrote:
> On Fri, Oct 11, 2019 at 08:18:25AM +0200, Julia Lawall wrote:
> > 
> > 
> > On Fri, 11 Oct 2019, Wambui Karuga wrote:
> > 
> > > Remove typedef declaration from struct cvmx_wqe_t in
> > 
> > You can remove the _t from the name as well.
> Should I remove the _t from all the enums/structs?

The _t means typedef (sort of, generally).

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

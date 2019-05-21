Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F342524E
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:37:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76EAC86B2D;
	Tue, 21 May 2019 14:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5OqIPfOIe1Cp; Tue, 21 May 2019 14:37:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B3EE86AE5;
	Tue, 21 May 2019 14:37:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3DAB1BF4DD
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F0EE681DEA
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqtGyw91HPvh for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:37:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7B3E781ACA
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:37:40 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4LESia5053994;
 Tue, 21 May 2019 14:37:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=RskMyQenR2wM63OcevwOWHNzwugK/Hp4hiHKYsTHcGs=;
 b=mI86anzZgCOl64SZEtqO81GboHVZc8TD37fnMGspxVJG0lLQGcgTh5wWn4sopBVW2vq2
 LjIc/aSOzROGo2RCIB+BtG2R2Eq469qTKrBQevEtmobyIPPiYoJOf3awZCMRFZdRipzJ
 ZwcnZYvS2kG72UzfU0533ZWV8ofPpP9/4WhNx0ubYLtLmmJzVoDYI9eQ5LcXWE7zJUDQ
 XL6Ggi9QRZ7gs1H2z1enYQAf2QPmPKMODc+AqdiisfTkRtleQ2LEp+Kh1ETI/ksAf7Sw
 qNMn5zJJJqZe4p2kfkMCEZmtpUiRU4dPUiyFHuOpBslTBZeL55fBtnOYcP6JLrZrrAoF iQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2sj9ftdvd7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 14:37:39 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4LEa216025352;
 Tue, 21 May 2019 14:37:38 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2sm0470wsn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 14:37:38 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4LEbb6J005043;
 Tue, 21 May 2019 14:37:37 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 21 May 2019 14:37:36 +0000
Date: Tue, 21 May 2019 17:37:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH v3] staging: fieldbus: core: fix ->poll() annotation
Message-ID: <20190521143730.GJ31203@kadam>
References: <20190521142009.7331-1-TheSven73@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521142009.7331-1-TheSven73@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9263
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905210091
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9263
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905210091
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
 Oscar Gomez Fuente <oscargomezf@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 10:20:09AM -0400, Sven Van Asbroeck wrote:
> From: Oscar Gomez Fuente <oscargomezf@gmail.com>
> 
> ->poll() functions should return __poll_t, but the fieldbus
> core's poll() does not. This generates a sparse warning.
> 
> Fix the ->poll() return value, and use recommended __poll_t
> constants (EPOLLxxx).
> 
> Signed-off-by: Oscar Gomez Fuente <oscargomezf@gmail.com>
> ---

If you're resending someone's patch, you have to add your own Signed off
by line as well.  Everyone who touches a patch has to sign that they
didn't add any of SCO's all powerful UnixWare source code into the
patch.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

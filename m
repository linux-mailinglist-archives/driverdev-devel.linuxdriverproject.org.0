Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0302152544
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 04:37:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A221D85BC2;
	Wed,  5 Feb 2020 03:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6KAUcYVV57l5; Wed,  5 Feb 2020 03:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6293C85AA1;
	Wed,  5 Feb 2020 03:37:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C21F1BF957
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 03:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C66084D16
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 03:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kd5284qRmoYs for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 03:37:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC7E884C3C
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 03:37:52 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0153XEmn025027;
 Wed, 5 Feb 2020 03:37:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=OmuUUofIK0R0rgxFdw+4ekLdvylBjN4LllylBkz949I=;
 b=EhvNNw5ZARed2+zcw6mKcoyEMrZUZlSpPwcYhgfmbpUZ8B3xXQJDu9IbnoNAqHLss66b
 pEkMz14APiuRedU68g2oTsXhQpVhYPoX2p5DxopeJkAhOk4deljqXb4LSooZFa2aZGx6
 0+lQSaWgmQRi8AlvlCAoFtO/O13VwfHsZhcQAw4y4qHM67C2xxms7E/18/iek7+EBXQv
 FytsjohSKp/V3aiJ/iLG7EQX8IgoaKdwLVIA0QvQi/enFGd/8B/we9pfUY7mcOXEZTv1
 yU4LmCn2B2h75cXaYQDvxAbWwbCP/jLQ3XWVnMQleChAiIxaMXrsiGhAk/fDq5C+xHND Ow== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2xykbp0fdj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Feb 2020 03:37:39 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0153YXb6052959;
 Wed, 5 Feb 2020 03:37:38 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2xykc3p6fe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Feb 2020 03:37:38 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0153b4hH002038;
 Wed, 5 Feb 2020 03:37:09 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 04 Feb 2020 19:37:03 -0800
Date: Wed, 5 Feb 2020 06:34:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20200205033416.GT1778@kadam>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
 <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
 <20200204203116.GN8731@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204203116.GN8731@bombadil.infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9521
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002050027
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9521
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002050027
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
 "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>, "fw@strlen.de" <fw@strlen.de>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "sandro@volery.com" <sandro@volery.com>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 04, 2020 at 12:31:16PM -0800, Matthew Wilcox wrote:
> On Tue, Feb 04, 2020 at 08:06:14PM +0000, Chris Packham wrote:
> > On Tue, 2020-02-04 at 07:09 +0000, gregkh@linuxfoundation.org wrote:
> > > On Tue, Feb 04, 2020 at 04:02:15AM +0000, Chris Packham wrote:
> > On Tue, 2020-02-04 at 10:21 +0300, Dan Carpenter wrote:
> > > My advice is to delete all the COMPILE_TEST code.  That stuff was a
> > > constant source of confusion and headaches.
> > 
> > I was also going to suggest this. Since the COMPILE_TEST has been a
> > source of trouble I was going to propose dropping the || COMPILE_TEST
> > from the Kconfig for the octeon drivers.
> 
> Not having it also causes problems.  I didn't originally add it for
> shits and giggles.

I wonder if the kbuild bot does enough cross compile build testing these
days to detect compile problems.  It might have improved to the point
where COMPILE_TEST isn't required.

One of the things about having a bunch of dummy functions for
COMPILE_TEST is that they introduce a lot of static checker warnings.
The real function is supposed to initialize stuff but the dummy function
just returns so now we get uninitialized variable warnings etc.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

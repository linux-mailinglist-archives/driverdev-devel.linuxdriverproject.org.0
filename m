Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3318015166C
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 08:23:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F37D786E1D;
	Tue,  4 Feb 2020 07:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pLTjyWUtwQDs; Tue,  4 Feb 2020 07:23:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0C8B86E88;
	Tue,  4 Feb 2020 07:23:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C505D1BF2B4
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 07:23:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BEF3184E5A
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 07:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ecnctD2KoxR for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 07:23:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0ECDD84E42
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 07:23:44 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0147NQS3010279;
 Tue, 4 Feb 2020 07:23:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Ij7io4GUXzasW7kqfziYoaIi88dN3t5qR5PedXGC7Q8=;
 b=mPbMY8mmWlZXnYNwLOgaWPeUatfXaoeggd9mCeJ5qNx4vNCKWYFQ4LBAg34P5Dz7sqLo
 NnrlGHM4Rtfoc1hjYfTH+4tE44CaR7ROHVSlyG2wNiCE7HCuMZhIVWj2sq2jBjHnVflk
 HauDb/kTe1mRSKJttt7oW753H9ZfUHpOnjcdTmZykhjZ2436CHxpb5IZUa2ZU61iZ/QO
 XK5f0Pl6wMLIxun3c2wNCsjxb89dWWDB2UB69yMJZCPnTWDnzcNdxV5d8JN76zacuzNg
 hbDqpvoJ/PN9LJHVMkkOQ5/JZAk7NMFt0xhidUGh+aWzNMl62qTStgdzXwmtnNp5KA1+ 7Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2xwyg9gwa5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Feb 2020 07:23:37 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0147JMEp052982;
 Tue, 4 Feb 2020 07:21:37 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2xxvy26x70-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Feb 2020 07:21:37 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0147LU1A015593;
 Tue, 4 Feb 2020 07:21:30 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 03 Feb 2020 23:21:30 -0800
Date: Tue, 4 Feb 2020 10:21:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] staging: octeon-usb: delete the octeon usb host
 controller driver
Message-ID: <20200204072122.GR1778@kadam>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <20191210091509.3546251-2-gregkh@linuxfoundation.org>
 <e97e28140b8c46cde93f40b93e2e0614943e96fc.camel@alliedtelesis.co.nz>
 <20200204071548.GB966981@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204071548.GB966981@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9520
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=971
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002040053
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9520
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002040054
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
 "ddaney.cavm@gmail.com" <ddaney.cavm@gmail.com>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "pundirsumit11@gmail.com" <pundirsumit11@gmail.com>,
 "nishkadg.linux@gmail.com" <nishkadg.linux@gmail.com>,
 "frank@generalsoftwareinc.com" <frank@generalsoftwareinc.com>,
 "laura.lazzati.15@gmail.com" <laura.lazzati.15@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My advice is to delete all the COMPILE_TEST code.  That stuff was a
constant source of confusion and headaches.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

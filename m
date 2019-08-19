Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA48B91E0E
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 09:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50AD185C94;
	Mon, 19 Aug 2019 07:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OuGFk5f7RHiC; Mon, 19 Aug 2019 07:40:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C9CC844D6;
	Mon, 19 Aug 2019 07:40:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2561BF393
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89FE8876D8
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9BGkjBKJKPv8 for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 07:40:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02EA087535
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 07:40:11 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7J7dJCN172685;
 Mon, 19 Aug 2019 07:40:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=GVh2oO0nd6sSkP06ZTnvwu+Lum4//U9LoDANkL5xm+w=;
 b=FBPiWfthLi/45K++LRRsHnM6lEKJfvmMSTC4rDaMUSQK9ZRqaDpKKoRf1WIVDV1MyMww
 BCsTNBZhrg6X69Mf+7kuXTFwTSln+zl37ed9or9eaog0wY/s4jDdwkvHVL2fgr6k9Uct
 ZzoezD59EVGKzSxz2g4i20oyTcS3iy8BaR6G0rv3sLaFx9wOEoUVo0KiZMZjPBZ+e5OG
 sVWw9EGfToNR40pv/xlwI3oJoFiwVLnOXGNy/eWKmyWNSJBtLRSytlhPBCRZtXX/xsQM
 slgQ14eBNDBMM6tnkRjz5macSfMVHdy6vJ9y8ZBkfzvNTowFX5Obm8oDLllY5Qkuol12 pw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2ue90t5s77-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 19 Aug 2019 07:40:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7J7bqN5036609;
 Mon, 19 Aug 2019 07:40:10 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2ue8wxsj9q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 19 Aug 2019 07:40:10 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7J7e8ZO005044;
 Mon, 19 Aug 2019 07:40:09 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 19 Aug 2019 00:40:08 -0700
Date: Mon, 19 Aug 2019 10:39:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Zhao, Yakui" <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 08/15] drivers/acrn: add VM memory management for
 ACRN char device
Message-ID: <20190819073958.GC4451@kadam>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-9-git-send-email-yakui.zhao@intel.com>
 <20190816124757.GW1974@kadam>
 <8b909c22-3873-2b5d-4845-1fee1a5d81ce@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b909c22-3873-2b5d-4845-1fee1a5d81ce@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9353
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=907
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908190088
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9353
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=974 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908190088
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
Cc: devel@driverdev.osuosl.org, Li@osuosl.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, Jason Chen CJ <jason.cj.chen@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>, Fei <lei1.li@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 19, 2019 at 01:32:54PM +0800, Zhao, Yakui wrote:
> In fact as this driver is mainly used for embedded IOT usage, it doesn't
> handle the complex cleanup when such error is encountered. Instead the clean
> up is handled in free_guest_vm.

A use after free here seems like a potential security problem.  Security
matters for IoT...  :(

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

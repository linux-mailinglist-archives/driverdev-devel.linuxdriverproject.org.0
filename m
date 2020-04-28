Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 079D01BBD0D
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 14:07:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A940E863DB;
	Tue, 28 Apr 2020 12:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lUMqpo_H4YOL; Tue, 28 Apr 2020 12:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87A96863A1;
	Tue, 28 Apr 2020 12:07:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14D831BF32A
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10E87875BC
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ubggljNA4eBy for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 12:07:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 845B2880C1
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 12:07:07 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SC3Stt037299;
 Tue, 28 Apr 2020 12:07:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=j1knl4efA5HJz7/bt0BDQ/AlQvPa1aZVt2yz7Wxx5D4=;
 b=sJAafU8K1pPo6h6EsDFIg3hhRDtlCE+2ft5cwucLMB5neN2u1Plz+Dx+4oWSMuVHwAgM
 eV2UdrRHHXlibpJoC+yWFcOawIwJFVeg6rQGTyhB/weoOIjh8dmT3yZHndT13pQRCzpH
 Qlt/DXQqHSv4Qy1JlrQQWk2NVBce5c5K+kVY2eg9+mD3yWqcyPT0Cm2CVDntWaOQAC/e
 WJHFZ6YJ5b5tGIhN3GjpdSWZFoY3rq/hCjzXXn83kKcf3tPF3Jdof56JqD/ZUfw7zkUH
 8JMq3aU8ueAVTQjHGgQKYuKNWRxf1BLxZQ8jP5KAZR5NHReJYuecdUXDKz6grIdO5YJu hw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30p2p04qpu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 12:07:06 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SC2woT111435;
 Tue, 28 Apr 2020 12:07:06 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 30mxpftdcg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 12:07:06 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03SC74e1032072;
 Tue, 28 Apr 2020 12:07:04 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Apr 2020 05:07:04 -0700
Date: Tue, 28 Apr 2020 15:06:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rylan Dmello <mail@rylan.coffee>
Subject: Re: [PATCH 2/3] staging: qlge: Remove print statement for vlgrp field
Message-ID: <20200428120655.GC2014@kadam>
References: <cover.1587959245.git.mail@rylan.coffee>
 <51bae37a54d414491779e4a3329508cc864ab900.1587959245.git.mail@rylan.coffee>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51bae37a54d414491779e4a3329508cc864ab900.1587959245.git.mail@rylan.coffee>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=722
 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004280097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 clxscore=1015
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 mlxlogscore=777 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004280097
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
Cc: devel@driverdev.osuosl.org, Benjamin Poirier <bpoirier@suse.com>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 Jiri Pirko <jpirko@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 27, 2020 at 12:14:44AM -0400, Rylan Dmello wrote:
> Remove statement that tries to print the non-existent 'vlgrp' field
> in the 'ql_adapter' struct, which causes a compilation failure when
> QL_DEV_DUMP is set.
> 
> vlgrp seems to have been removed from ql_adapter as a part of
> commit 18c49b91777c ("qlge: do vlan cleanup") in 2011.
> 
> vlgrp might be replaced by the 'active_vlans' array introduced in the
> aforementioned commit. But I'm not sure if printing all 64 values of
> that array would help with debugging this driver, so I'm leaving it
> out of the debug code in this patch.
> 
> Signed-off-by: Rylan Dmello <mail@rylan.coffee>

Fixes: 18c49b91777c ("qlge: do vlan cleanup")

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

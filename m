Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A70831BBD14
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 14:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 68BAC22816;
	Tue, 28 Apr 2020 12:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q9V4sXiXOyMM; Tue, 28 Apr 2020 12:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C29AC22795;
	Tue, 28 Apr 2020 12:08:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68DC91BF32A
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6589D86200
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dJGCBlTBt-bi for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 12:08:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8423861CE
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 12:08:08 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SC3Sq7037375;
 Tue, 28 Apr 2020 12:08:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=gANKfJoeceEgfA8OPvEctrQTZEimU2IEnD1yXfT1iDY=;
 b=CGnFDgP8uGkoeRuGsBIUkgjTJxg2ILIBDd8WrEJmIdaft/z/jcsiGdF5e9rYtysQJGIz
 PEXV5SZKIYfeyy1geKu7TkifjYTZJPhFCcdT535lIb0VShmiPVVa0s/FapYhJixilscE
 P+7NgfQ4EcVjxL1bsv9ffp94k7ZDfXl0bW6DhlhouGcsPnxy3NyBBGWO0jKaX/LinNFN
 cGZHf0RtYvARScQpb3oKOHbIlon5RMlKJmZgsb43rZM2TfUswI+8kz3u2fvqj2VayWHE
 6msE6b0VQ2X6g6sRUZYlnYDdnz8W3NkgL6uHJZUOVzwaPKPEIben6hcFGCc2CbefUr3i jA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30p2p04qu0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 12:08:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SC37pf112483;
 Tue, 28 Apr 2020 12:08:07 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 30mxpftfqm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 12:08:06 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03SC85KX032436;
 Tue, 28 Apr 2020 12:08:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Apr 2020 05:08:05 -0700
Date: Tue, 28 Apr 2020 15:07:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rylan Dmello <mail@rylan.coffee>
Subject: Re: [PATCH 3/3] staging: qlge: Remove print statements for
 lbq_clean_idx and lbq_free_cnt
Message-ID: <20200428120757.GD2014@kadam>
References: <cover.1587959245.git.mail@rylan.coffee>
 <aa7e0197f4e34cec0855124e45696e33dd9527e5.1587959245.git.mail@rylan.coffee>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa7e0197f4e34cec0855124e45696e33dd9527e5.1587959245.git.mail@rylan.coffee>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=2
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004280097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 clxscore=1015
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 suspectscore=2 mlxlogscore=999 priorityscore=1501
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

On Mon, Apr 27, 2020 at 12:15:18AM -0400, Rylan Dmello wrote:
> Remove debug print statements referring to non-existent fields
> 'lbq_clean_idx' and 'lbq_free_cnt' in the 'rx_ring' struct, which causes
> a compilation failure when QL_DEV_DUMP is set.
> 
> These fields were initially removed as a part of commit aec626d2092f
> ("staging: qlge: Update buffer queue prod index despite oom") in 2019.
> 
> Their replacement fields ('next_to_use' and 'next_to_clean') are already
> being printed, so this patch does not add new debug statements for them.
> 
> Signed-off-by: Rylan Dmello <mail@rylan.coffee>


Fixes: aec626d2092f ("staging: qlge: Update buffer queue prod index despite oom")

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

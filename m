Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C2C1BBD0C
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 14:07:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F4D187120;
	Tue, 28 Apr 2020 12:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZyDQctBkyDHV; Tue, 28 Apr 2020 12:07:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B248386FEA;
	Tue, 28 Apr 2020 12:07:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A73331BF32A
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8EE782277A
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 12:07:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UH1WFAy2OjM2 for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 12:06:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 948B02273B
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 12:06:58 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SC3SLM037296;
 Tue, 28 Apr 2020 12:06:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=OSf6jYhMrgn/dtTnYSI73L6/78HrXWbkBlk67OBSPnA=;
 b=rO+Phk3amJ6wJjrSEgneLJoNdCOWQEChKG8r8NYnFFIEcRQh+MJSJkmsknbCkKd2H5Dx
 ke9TGc7Avzv6OaYyC2rfBqo30QZ47ubVU14ZDYQWPvfuthALUDbfhJp1D8zXGJmbev5P
 EjR8fSc9c/KBJXUQADZZur+ram+UBeV7SxiyDrJA2xc7F5lhrQ/2QmfuWp1fyaatlVYp
 5Co6yfDSUUZhzlDsOnhmoCuK45U3TPLZmXQqqpQnTp0r2DsV9D05OnHpq0Af6TfEs793
 G7GfRNfx76JLBlIXEBHZtIgXrwgU9YJrprYYxmrmkEnOqiIf7pWB1pFGg8JRL32a/BPM 8w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30p2p04qng-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 12:06:57 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SC2AoX004893;
 Tue, 28 Apr 2020 12:04:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30mxwyk421-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 12:04:56 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03SC4rdL001889;
 Tue, 28 Apr 2020 12:04:53 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Apr 2020 05:04:52 -0700
Date: Tue, 28 Apr 2020 15:04:45 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rylan Dmello <mail@rylan.coffee>, Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH 1/3] staging: qlge: Remove unnecessary parentheses around
 struct field
Message-ID: <20200428120445.GB2014@kadam>
References: <cover.1587959245.git.mail@rylan.coffee>
 <4dea7a7fae6a56c51cc19228b82a3c230029f54b.1587959245.git.mail@rylan.coffee>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4dea7a7fae6a56c51cc19228b82a3c230029f54b.1587959245.git.mail@rylan.coffee>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=25
 spamscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004280097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 clxscore=1011
 bulkscore=0 adultscore=7 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501
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

On Mon, Apr 27, 2020 at 12:14:11AM -0400, Rylan Dmello wrote:
> Remove unnecessary parentheses around a struct field accessor that
> causes a build failure when QL_DEV_DUMP is set.
> 
> Signed-off-by: Rylan Dmello <mail@rylan.coffee>

Add a Fixes tag.

Fixes: 67e6cf7338e1 ("staging: qlge: add braces around macro arguments")

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

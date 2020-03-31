Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B11341993CC
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 12:45:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 27FD324C5E;
	Tue, 31 Mar 2020 10:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YbpMKv5M4yfl; Tue, 31 Mar 2020 10:45:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94C072012F;
	Tue, 31 Mar 2020 10:45:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B2891BF263
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 10:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0725D2012F
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 10:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n-7Om-XfNmfJ for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 10:45:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 4ACA32010D
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 10:45:47 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02VAhaDb013377;
 Tue, 31 Mar 2020 10:45:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=0Ov1k5KG6ntqooUa2MUbrUp+j0EclFM7Qaf9h93DoO8=;
 b=pnANkyrlFm9JlDtdt7ldA+O0yPz5J7JXyG10SjX4htpfkwtEGkLJo3iYtQVhNjv28QX6
 s8WHePEZEXnUKX2NH8LPzID/jojQOqc7aJOjsh3JSRoWT96LlYwTuY1p4XgtL0b7yb6e
 q3f8el3hPM/XQ+WNHu7nFd9/2O/wT/M5YTyo2Kg0Ra8aaRyQ2FCd6r/dlZW8PSpuk3ls
 /Mf73B42KCWnfwByq1SFaxjzg+SDsH+o3A0bWk/GScJznDSvbB2F40lS2fR5LN1lRHih
 9XOQ8KJOtZqoSXntm1xKzUq6bLl2bjZlGZQ+KF2owzBOuEMLdX24JOewM4+E3eG7f1Vy jw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 303yun1dyc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Mar 2020 10:45:46 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02VAg58M003467;
 Tue, 31 Mar 2020 10:45:45 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 302g9x1hgd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Mar 2020 10:45:45 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02VAjhbt017392;
 Tue, 31 Mar 2020 10:45:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 31 Mar 2020 03:45:43 -0700
Date: Tue, 31 Mar 2020 13:45:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Christian Gromm <christian.gromm@microchip.com>
Subject: [staging:staging-testing 278/280] drivers/most/core.c:1287
 most_register_interface() error: we previously assumed 'iface' could be null
 (see line 1285)
Message-ID: <20200331104530.GA2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9576
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003310097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9576
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003310097
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
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christian,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   4a1a3e9bf5654e98bb48f5b074af17af96ded30d
commit: b276527539188f1f61c082ebef27803db93e536d [278/280] staging: most: move core files out of the staging area

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/most/core.c:1287 most_register_interface() error: we previously assumed 'iface' could be null (see line 1285)

# https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=b276527539188f1f61c082ebef27803db93e536d
git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
git remote update staging
git checkout b276527539188f1f61c082ebef27803db93e536d
vim +/iface +1287 drivers/most/core.c

4d5f022f3a664e drivers/staging/most/core.c          Christian Gromm     2017-11-21  1279  int most_register_interface(struct most_interface *iface)
57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24  1280  {
57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24  1281  	unsigned int i;
57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24  1282  	int id;
fcb7fad82e23f6 drivers/staging/most/core.c          Christian Gromm     2017-11-21  1283  	struct most_channel *c;
57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24  1284  
57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24 @1285  	if (!iface || !iface->enqueue || !iface->configure ||
                                                                                                    ^^^^^^

57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24  1286  	    !iface->poison_channel || (iface->num_channels > MAX_CHANNELS)) {
6a82c775812944 drivers/staging/most/core.c          Christian Gromm     2020-01-23 @1287  		dev_err(iface->dev, "Bad interface or channel overflow\n");
                                                                                                                ^^^^^^^^^^

Hopefully, we can just remove the NULL check?

4d5f022f3a664e drivers/staging/most/core.c          Christian Gromm     2017-11-21  1288  		return -EINVAL;
57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24  1289  	}
57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24  1290  
57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24  1291  	id = ida_simple_get(&mdev_id, 0, 0, GFP_KERNEL);
57562a72414ca3 drivers/staging/most/mostcore/core.c Christian Gromm     2015-07-24  1292  	if (id < 0) {

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

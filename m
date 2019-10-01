Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6A3C35A7
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 15:29:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D90585EC6;
	Tue,  1 Oct 2019 13:29:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3U6uZu6auK3m; Tue,  1 Oct 2019 13:29:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6317085E93;
	Tue,  1 Oct 2019 13:29:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6D21BF981
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:28:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5831181D35
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:28:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OedG6oZNlY62 for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 13:28:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB77C8139A
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 13:28:55 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91DNkpV049191;
 Tue, 1 Oct 2019 13:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=vt4Pgq8lRVaTH0vwc7hqag3sS0gO7Q3PcCL8FG4+y6g=;
 b=feIl3YlEj52/vm3ohm1UmFeEDMcgqL9JoWiLSg6zyG6KOxi9Yi1syiWz0iirD6NmsEav
 MTktmnySKlt7lsvSpaK3Vnxu/OIXJw76RVKkZvWrm6wTsUBfeDZrAJyPCkbYnZL95kjM
 H81tj7bWeoVVftfh39zz1s6Sd+1VrhU8ghLouRNrzwg9DNmy/5iqe85ypT7l7hsEGQhv
 aUfrHj7GFH3S2+cnMHAUhLayYXJkqXlblUfC2XJ9uF/zaGSHQ+Uhc/JTiqZjT5OOUmoj
 lnNAQIZz+tZC5bk3Nz+wsNRYU8U95d3X8CLwCwoWgKwuGsYh+mIXgKtMa46kC2IgTWrd KQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2v9xxunvmt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:28:55 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91DSaT7172866;
 Tue, 1 Oct 2019 13:28:54 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vbmpyjtcb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:28:54 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x91DSqJ3032633;
 Tue, 1 Oct 2019 13:28:52 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Oct 2019 06:28:51 -0700
Date: Tue, 1 Oct 2019 16:28:45 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jesse Barton <jessebarton95@gmail.com>
Subject: Re: [PATCH 2/3] Staging: exfat: exfat_super.c: fixed multiple coding
 style issues with camelcase and parentheses
Message-ID: <20191001132832.GF22609@kadam>
References: <20190929145229.38561-1-jessebarton95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929145229.38561-1-jessebarton95@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010121
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 29, 2019 at 09:52:29AM -0500, Jesse Barton wrote:
> Changed Function Names:
> ffsGetVolInfo -> ffs_get_vol_info
> ffsLookupFile -> ffs_lookup_file
> ffsCreateFile -> ffs_create_file
> ffsReadFile -> ffs_read_file
> ffsWriteFile -> ffs_write_file
> ffsTruncateFile -> ffs_truncate_file
> ffsRemoveFile -> ffs_remove_file
> ffsMoveFile -> ffs_move_file
> ffsSetAttr -> ffs_set_attr
> ffsReadStat -> ffs_read_stat
> ffsWriteStat -> ffs_write_stat
> ffsMapCluster -> ffs_map_cluster
> 
> Removed BUG_ON() and added WARN_ON().
> Removed unnecessary parentheses:
> *(dir_entry->Name) - > *dir_entry->Name

Do these other two things in separate patches.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

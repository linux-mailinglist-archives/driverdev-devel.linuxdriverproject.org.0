Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E9ED0CDC
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 12:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7654587864;
	Wed,  9 Oct 2019 10:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qlO7j2VReZIC; Wed,  9 Oct 2019 10:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4190587821;
	Wed,  9 Oct 2019 10:31:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D87B31BF3C6
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 10:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1E5A85F5D
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 10:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ZLlLvbnxU7y for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 10:31:54 +0000 (UTC)
X-Greylist: delayed 02:53:31 by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 863F085EE8
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 10:31:54 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x997YNg5071489;
 Wed, 9 Oct 2019 07:38:21 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2vek4qj8pn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 07:38:21 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x997XGjD037373;
 Wed, 9 Oct 2019 07:38:20 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2vh8k08728-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 07:38:20 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x997cJiv029351;
 Wed, 9 Oct 2019 07:38:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 00:38:18 -0700
Date: Wed, 9 Oct 2019 10:38:03 +0300
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org,
 =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: [staging:staging-testing 57/111] drivers/staging/wfx/scan.c:207
 wfx_scan_work() warn: inconsistent returns 'sem:&wvif->scan.lock'.
Message-ID: <20191009073803.GQ21515@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090071
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090071
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
 kbuild-all@01.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git =
staging-testing
head:   d49d1c76b96ebf39539e93d5ab7943a01ef70e4f
commit: 1a61af0f8cbecd1610c6fc380d0fb00f57fd43f2 [57/111] staging: wfx: all=
ow to scan networks

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

New smatch warnings:
drivers/staging/wfx/scan.c:207 wfx_scan_work() warn: inconsistent returns '=
sem:&wvif->scan.lock'.
  Locked on:   line 201
  Unlocked on: line 145

# https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit=
/?id=3D1a61af0f8cbecd1610c6fc380d0fb00f57fd43f2
git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/greg=
kh/staging.git
git remote update staging
git checkout 1a61af0f8cbecd1610c6fc380d0fb00f57fd43f2
vim +207 drivers/staging/wfx/scan.c

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  116  void wfx_scan_work(stru=
ct work_struct *work)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  117  {
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  118  	struct wfx_vif *wvif =
=3D container_of(work, struct wfx_vif, scan.work);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  119  	struct ieee80211_chann=
el **it;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  120  	struct wfx_scan_params=
 scan =3D {
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  121  		.scan_req.scan_type.t=
ype =3D 0,    /* Foreground */
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  122  	};
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  123  	struct ieee80211_chann=
el *first;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  124  	int i;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  125  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  126  	down(&wvif->scan.lock);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  127  	mutex_lock(&wvif->wdev=
->conf_mutex);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  128  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  129  	if (!wvif->scan.req ||=
 wvif->scan.curr =3D=3D wvif->scan.end) {
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  130  		if (wvif->scan.output=
_power !=3D wvif->wdev->output_power)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  131  			hif_set_output_power=
(wvif, wvif->wdev->output_power * 10);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  132  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  133  		if (wvif->scan.status=
 < 0)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  134  			dev_warn(wvif->wdev-=
>dev, "scan failed\n");
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  135  		else if (wvif->scan.r=
eq)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  136  			dev_dbg(wvif->wdev->=
dev, "scan completed\n");
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  137  		else
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  138  			dev_dbg(wvif->wdev->=
dev, "scan canceled\n");
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  139  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  140  		wvif->scan.req =3D NU=
LL;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  141  		wfx_tx_unlock(wvif->w=
dev);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  142  		mutex_unlock(&wvif->w=
dev->conf_mutex);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  143  		__ieee80211_scan_comp=
leted_compat(wvif->wdev->hw, wvif->scan.status ? 1 : 0);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  144  		up(&wvif->scan.lock);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  145  		return;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  146  	}
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  147  	first =3D *wvif->scan.=
curr;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  148  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  149  	for (it =3D wvif->scan=
.curr + 1, i =3D 1;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  150  	     it !=3D wvif->sca=
n.end && i < HIF_API_MAX_NB_CHANNELS;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  151  	     ++it, ++i) {
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  152  		if ((*it)->band !=3D =
first->band)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  153  			break;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  154  		if (((*it)->flags ^ f=
irst->flags) &
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  155  				IEEE80211_CHAN_NO_I=
R)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  156  			break;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  157  		if (!(first->flags & =
IEEE80211_CHAN_NO_IR) &&
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  158  		    (*it)->max_power =
!=3D first->max_power)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  159  			break;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  160  	}
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  161  	scan.scan_req.band =3D=
 first->band;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  162  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  163  	if (wvif->scan.req->no=
_cck)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  164  		scan.scan_req.max_tra=
nsmit_rate =3D API_RATE_INDEX_G_6MBPS;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  165  	else
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  166  		scan.scan_req.max_tra=
nsmit_rate =3D API_RATE_INDEX_B_1MBPS;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  167  	scan.scan_req.num_of_p=
robe_requests =3D
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  168  		(first->flags & IEEE8=
0211_CHAN_NO_IR) ? 0 : 2;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  169  	scan.scan_req.num_of_s=
si_ds =3D wvif->scan.n_ssids;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  170  	scan.ssids =3D &wvif->=
scan.ssids[0];
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  171  	scan.scan_req.num_of_c=
hannels =3D it - wvif->scan.curr;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  172  	scan.scan_req.probe_de=
lay =3D 100;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  173  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  174  	scan.ch =3D kcalloc(sc=
an.scan_req.num_of_channels, sizeof(u8), GFP_KERNEL);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  175  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  176  	if (!scan.ch) {
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  177  		wvif->scan.status =3D=
 -ENOMEM;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  178  		goto fail;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  179  	}
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  180  	for (i =3D 0; i < scan=
.scan_req.num_of_channels; ++i)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  181  		scan.ch[i] =3D wvif->=
scan.curr[i]->hw_value;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  182  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  183  	if (wvif->scan.curr[0]=
->flags & IEEE80211_CHAN_NO_IR) {
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  184  		scan.scan_req.min_cha=
nnel_time =3D 50;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  185  		scan.scan_req.max_cha=
nnel_time =3D 150;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  186  	} else {
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  187  		scan.scan_req.min_cha=
nnel_time =3D 10;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  188  		scan.scan_req.max_cha=
nnel_time =3D 50;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  189  	}
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  190  	if (!(first->flags & I=
EEE80211_CHAN_NO_IR) &&
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  191  	    wvif->scan.output_=
power !=3D first->max_power) {
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  192  		wvif->scan.output_pow=
er =3D first->max_power;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  193  		hif_set_output_power(=
wvif, wvif->scan.output_power * 10);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  194  	}
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  195  	wvif->scan.status =3D =
wfx_scan_start(wvif, &scan);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  196  	kfree(scan.ch);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  197  	if (wvif->scan.status)
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  198  		goto fail;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  199  	wvif->scan.curr =3D it;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  200  	mutex_unlock(&wvif->wd=
ev->conf_mutex);

Smatch says that we should have an:  up(&wvif->scan.lock);.  That seems
reasonable, but I'm not positive that it's correct.

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  201  	return;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  202  =

1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  203  fail:
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  204  	wvif->scan.curr =3D wv=
if->scan.end;
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  205  	mutex_unlock(&wvif->wd=
ev->conf_mutex);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  206  	up(&wvif->scan.lock);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19 @207  	schedule_work(&wvif->s=
can.work);
1a61af0f8cbecd J=E9r=F4me Pouiller 2019-09-19  208  }

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

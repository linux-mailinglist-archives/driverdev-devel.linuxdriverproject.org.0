Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5170719EB42
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Apr 2020 14:44:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66C278756D;
	Sun,  5 Apr 2020 12:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVhE-sgOjTf5; Sun,  5 Apr 2020 12:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33B868742D;
	Sun,  5 Apr 2020 12:44:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29CA51BF3C0
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 12:44:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 19E2D873C5
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 12:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZBlqf26DbDsF for <devel@linuxdriverproject.org>;
 Sun,  5 Apr 2020 12:44:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33ABD86C4D
 for <devel@driverdev.osuosl.org>; Sun,  5 Apr 2020 12:44:12 +0000 (UTC)
IronPort-SDR: y9Hk2bmOcvjqhDXOfDr8gak7Duu9dZXfuWZJrIiCnDjs8Bi/VJ2NmnbGYT6nA3cIqjUIGPrmFX
 nn/gce7Lgxnw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2020 05:44:11 -0700
IronPort-SDR: AMiHYK8iGA5KHxsdObvAKVzjP11vUi+pFesmpYsv+19WZDCUkjR2/j6JcbTyuSlUvPyvCk3c1n
 2Z0jMHmXHlsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,347,1580803200"; d="scan'208";a="250631511"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 05 Apr 2020 05:44:09 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jL4dF-000F0J-67; Sun, 05 Apr 2020 20:44:09 +0800
Date: Sun, 5 Apr 2020 20:43:40 +0800
From: kbuild test robot <lkp@intel.com>
To: Briana Oursler <briana.oursler@gmail.com>
Subject: [staging:staging-testing 41/41]
 drivers/staging/vt6655/baseband.c:1711:15: warning: The scope of the
 variable 'preamble' can be reduced. [variableScope]
Message-ID: <202004052024.Gapw2WV7%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 kbuild-all@lists.01.org, Stefano Brivio <sbrivio@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   e7b6875944e61bec586ede80b95727cd55381e1e
commit: e7b6875944e61bec586ede80b95727cd55381e1e [41/41] Staging: vt6655: Replace camel case variable names.

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/staging/vt6655/baseband.c:1711:15: warning: The scope of the variable 'preamble' can be reduced. [variableScope]
    unsigned int preamble;
                 ^
>> drivers/staging/vt6655/baseband.c:1912:16: warning: The scope of the variable 'by_value' can be reduced. [variableScope]
>>  unsigned char by_value;
                  ^
   drivers/staging/vt6655/baseband.c:1955:16: warning: The scope of the variable 'by_value' can be reduced. [variableScope]
>>  unsigned char by_value;
                  ^

vim +/preamble +1711 drivers/staging/vt6655/baseband.c

  1689	
  1690	/*---------------------  Export Variables  --------------------------*/
  1691	/*
  1692	 * Description: Calculate data frame transmitting time
  1693	 *
  1694	 * Parameters:
  1695	 *  In:
  1696	 *      by_preamble_type  - Preamble Type
  1697	 *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
  1698	 *      cb_frame_length   - Baseband Type
  1699	 *      tx_rate           - Tx Rate
  1700	 *  Out:
  1701	 *
  1702	 * Return Value: FrameTime
  1703	 *
  1704	 */
  1705	unsigned int bb_get_frame_time(unsigned char by_preamble_type,
  1706				       unsigned char by_pkt_type,
  1707				       unsigned int cb_frame_length,
  1708				       unsigned short tx_rate)
  1709	{
  1710		unsigned int frame_time;
> 1711		unsigned int preamble;
  1712		unsigned int tmp;
  1713		unsigned int rate_idx = (unsigned int)tx_rate;
  1714		unsigned int rate = 0;
  1715	
  1716		if (rate_idx > RATE_54M)
  1717			return 0;
  1718	
  1719		rate = (unsigned int)awcFrameTime[rate_idx];
  1720	
  1721		if (rate_idx <= 3) {		    /* CCK mode */
  1722			if (by_preamble_type == 1) /* Short */
  1723				preamble = 96;
  1724			else
  1725				preamble = 192;
  1726			frame_time = (cb_frame_length * 80) / rate;  /* ????? */
  1727			tmp = (frame_time * rate) / 80;
  1728			if (cb_frame_length != tmp)
  1729				frame_time++;
  1730	
  1731			return preamble + frame_time;
  1732		}
  1733		frame_time = (cb_frame_length * 8 + 22) / rate; /* ???????? */
  1734		tmp = ((frame_time * rate) - 22) / 8;
  1735		if (cb_frame_length != tmp)
  1736			frame_time++;
  1737	
  1738		frame_time = frame_time * 4;    /* ??????? */
  1739		if (by_pkt_type != PK_TYPE_11A)
  1740			frame_time += 6;     /* ?????? */
  1741	
  1742		return 20 + frame_time; /* ?????? */
  1743	}
  1744	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

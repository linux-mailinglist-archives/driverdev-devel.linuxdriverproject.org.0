Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 078B89C324
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 14:05:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 804F620511;
	Sun, 25 Aug 2019 12:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sIRYe0dIhbwn; Sun, 25 Aug 2019 12:05:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 454C3204CE;
	Sun, 25 Aug 2019 12:05:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E11121BF59B
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 12:05:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D1440864C5
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 12:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gojcPnKrV1JX for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 12:05:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 947658649A
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 12:05:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Aug 2019 05:05:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,429,1559545200"; 
 d="gz'50?scan'50,208,50";a="380238788"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 25 Aug 2019 05:05:22 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i1rGr-0005yt-W0; Sun, 25 Aug 2019 20:05:21 +0800
Date: Sun, 25 Aug 2019 20:04:22 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [staging:greybus_move 249/251]
 include/linux/greybus/greybus_protocols.h:45:2: error: unknown type name
 '__le16'
Message-ID: <201908252019.nBHeqFN1%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="o3azx6vl63rewmi5"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--o3azx6vl63rewmi5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git greybus_move
head:   b85c1b86639e4f70f388c24ec4a3c5d56a50bf3c
commit: 739afccd8b20e98bc7ed311a1b31a01da10cb07f [249/251] staging: greybus: move core include files to include/linux/greybus/
config: x86_64-allmodconfig (attached as .config)
compiler: gcc-7 (Debian 7.4.0-10) 7.4.0
reproduce:
        git checkout 739afccd8b20e98bc7ed311a1b31a01da10cb07f
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from <command-line>:0:0:
>> include/linux/greybus/greybus_protocols.h:45:2: error: unknown type name '__le16'
     __le16 size;  /* Size in bytes of header + payload */
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:46:2: error: unknown type name '__le16'
     __le16 operation_id; /* Operation unique id */
     ^~~~~~
>> include/linux/greybus/greybus_protocols.h:47:2: error: unknown type name '__u8'
     __u8 type;  /* E.g GB_I2C_TYPE_* or GB_GPIO_TYPE_* */
     ^~~~
   include/linux/greybus/greybus_protocols.h:48:2: error: unknown type name '__u8'
     __u8 result;  /* Result of request (in responses only) */
     ^~~~
   include/linux/greybus/greybus_protocols.h:49:2: error: unknown type name '__u8'
     __u8 pad[2];  /* must be zero (ignore when read) */
     ^~~~
   include/linux/greybus/greybus_protocols.h:58:2: error: unknown type name '__u8'
     __u8 phase;
     ^~~~
   include/linux/greybus/greybus_protocols.h:88:2: error: unknown type name '__u8'
     __u8 major;
     ^~~~
   include/linux/greybus/greybus_protocols.h:89:2: error: unknown type name '__u8'
     __u8 minor;
     ^~~~
   include/linux/greybus/greybus_protocols.h:93:2: error: unknown type name '__u8'
     __u8 major;
     ^~~~
   include/linux/greybus/greybus_protocols.h:94:2: error: unknown type name '__u8'
     __u8 minor;
     ^~~~
   include/linux/greybus/greybus_protocols.h:98:2: error: unknown type name '__u8'
     __u8 bundle_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:102:2: error: unknown type name '__u8'
     __u8 major;
     ^~~~
   include/linux/greybus/greybus_protocols.h:103:2: error: unknown type name '__u8'
     __u8 minor;
     ^~~~
   include/linux/greybus/greybus_protocols.h:108:2: error: unknown type name '__le16'
     __le16   size;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:113:2: error: unknown type name '__u8'
     __u8   data[0];
     ^~~~
   include/linux/greybus/greybus_protocols.h:118:2: error: unknown type name '__le16'
     __le16   cport_id;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:122:2: error: unknown type name '__le16'
     __le16   cport_id;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:127:2: error: unknown type name '__le16'
     __le16   cport_id;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:143:2: error: unknown type name '__u8'
     __u8 bundle_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:147:2: error: unknown type name '__u8'
     __u8 status;
     ^~~~
   include/linux/greybus/greybus_protocols.h:161:2: error: unknown type name '__u8'
     __u8 status;
     ^~~~
>> include/linux/greybus/greybus_protocols.h:201:2: error: unknown type name '__le32'
     __le32 flags;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:218:2: error: unknown type name '__u8'
     __u8   firmware_tag[GB_FIRMWARE_TAG_MAX_SIZE];
     ^~~~
   include/linux/greybus/greybus_protocols.h:222:2: error: unknown type name '__u8'
     __u8   firmware_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:223:2: error: unknown type name '__le32'
     __le32   size;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:228:2: error: unknown type name '__u8'
     __u8   firmware_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:229:2: error: unknown type name '__le32'
     __le32   offset;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:230:2: error: unknown type name '__le32'
     __le32   size;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:234:2: error: unknown type name '__u8'
     __u8   data[0];
     ^~~~
   include/linux/greybus/greybus_protocols.h:239:2: error: unknown type name '__u8'
     __u8   firmware_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:278:2: error: unknown type name '__u8'
     __u8   firmware_tag[GB_FIRMWARE_TAG_MAX_SIZE];
     ^~~~
   include/linux/greybus/greybus_protocols.h:279:2: error: unknown type name '__le16'
     __le16   major;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:280:2: error: unknown type name '__le16'
     __le16   minor;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:285:2: error: unknown type name '__u8'
     __u8   request_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:286:2: error: unknown type name '__u8'
     __u8   load_method;
     ^~~~
   include/linux/greybus/greybus_protocols.h:287:2: error: unknown type name '__u8'
     __u8   firmware_tag[GB_FIRMWARE_TAG_MAX_SIZE];
     ^~~~
   include/linux/greybus/greybus_protocols.h:293:2: error: unknown type name '__u8'
     __u8   request_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:294:2: error: unknown type name '__u8'
     __u8   status;
     ^~~~
   include/linux/greybus/greybus_protocols.h:295:2: error: unknown type name '__le16'
     __le16   major;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:296:2: error: unknown type name '__le16'
     __le16   minor;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:302:2: error: unknown type name '__u8'
     __u8   firmware_tag[GB_FIRMWARE_TAG_MAX_SIZE];
     ^~~~
   include/linux/greybus/greybus_protocols.h:306:2: error: unknown type name '__le16'
     __le16   major;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:307:2: error: unknown type name '__le16'
     __le16   minor;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:308:2: error: unknown type name '__u8'
     __u8   status;
     ^~~~
   include/linux/greybus/greybus_protocols.h:313:2: error: unknown type name '__u8'
     __u8   request_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:314:2: error: unknown type name '__u8'
     __u8   firmware_tag[GB_FIRMWARE_TAG_MAX_SIZE];
     ^~~~
   include/linux/greybus/greybus_protocols.h:320:2: error: unknown type name '__u8'
     __u8   request_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:321:2: error: unknown type name '__u8'
     __u8   status;
     ^~~~
   include/linux/greybus/greybus_protocols.h:335:2: error: unknown type name '__u8'
     __u8   uid[8];
     ^~~~
   include/linux/greybus/greybus_protocols.h:340:2: error: unknown type name '__le32'
     __le32   certificate_class;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:341:2: error: unknown type name '__le32'
     __le32   certificate_id;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:345:2: error: unknown type name '__u8'
     __u8   result_code;
     ^~~~
   include/linux/greybus/greybus_protocols.h:346:2: error: unknown type name '__u8'
     __u8   certificate[0];
     ^~~~
   include/linux/greybus/greybus_protocols.h:351:2: error: unknown type name '__le32'
     __le32   auth_type;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:352:2: error: unknown type name '__u8'
     __u8   uid[8];
--
     ^~~~
   include/linux/greybus/greybus_protocols.h:1725:2: error: unknown type name '__u8'
     __u8 brightness;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1730:2: error: unknown type name '__u8'
     __u8 light_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1731:2: error: unknown type name '__u8'
     __u8 channel_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1732:2: error: unknown type name '__le32'
     __le32 color;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1737:2: error: unknown type name '__u8'
     __u8 light_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1738:2: error: unknown type name '__u8'
     __u8 channel_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1739:2: error: unknown type name '__u8'
     __u8 fade_in;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1740:2: error: unknown type name '__u8'
     __u8 fade_out;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1745:2: error: unknown type name '__u8'
     __u8 light_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1746:2: error: unknown type name '__u8'
     __u8 event;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1752:2: error: unknown type name '__u8'
     __u8 light_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1753:2: error: unknown type name '__u8'
     __u8 channel_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1754:2: error: unknown type name '__le32'
     __le32 intensity_uA;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1759:2: error: unknown type name '__u8'
     __u8 light_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1760:2: error: unknown type name '__u8'
     __u8 channel_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1761:2: error: unknown type name '__u8'
     __u8 state;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1766:2: error: unknown type name '__u8'
     __u8 light_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1767:2: error: unknown type name '__u8'
     __u8 channel_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1768:2: error: unknown type name '__le32'
     __le32 timeout_us;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1773:2: error: unknown type name '__u8'
     __u8 light_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1774:2: error: unknown type name '__u8'
     __u8 channel_id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1779:2: error: unknown type name '__le32'
     __le32 fault;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1964:2: error: unknown type name '__u8'
     __u8 stream_name[GB_AUDIO_PCM_NAME_MAX];
     ^~~~
   include/linux/greybus/greybus_protocols.h:1965:2: error: unknown type name '__le32'
     __le32 formats; /* GB_AUDIO_PCM_FMT_* */
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1966:2: error: unknown type name '__le32'
     __le32 rates;  /* GB_AUDIO_PCM_RATE_* */
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1967:2: error: unknown type name '__u8'
     __u8 chan_min;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1968:2: error: unknown type name '__u8'
     __u8 chan_max;
     ^~~~
   include/linux/greybus/greybus_protocols.h:1969:2: error: unknown type name '__u8'
     __u8 sig_bits; /* number of bits of content */
     ^~~~
   include/linux/greybus/greybus_protocols.h:1973:2: error: unknown type name '__u8'
     __u8   name[AUDIO_DAI_NAME_MAX];
     ^~~~
   include/linux/greybus/greybus_protocols.h:1974:2: error: unknown type name '__le16'
     __le16   data_cport;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1980:2: error: unknown type name '__le32'
     __le32 min;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1981:2: error: unknown type name '__le32'
     __le32 max;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1982:2: error: unknown type name '__le32'
     __le32 step;
     ^~~~~~
>> include/linux/greybus/greybus_protocols.h:1986:2: error: unknown type name '__le64'
     __le64 min;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1987:2: error: unknown type name '__le64'
     __le64 max;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1988:2: error: unknown type name '__le64'
     __le64 step;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1992:2: error: unknown type name '__le32'
     __le32 items;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1993:2: error: unknown type name '__le16'
     __le16 names_length;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:1994:2: error: unknown type name '__u8'
     __u8 names[0];
     ^~~~
   include/linux/greybus/greybus_protocols.h:1998:2: error: unknown type name '__u8'
     __u8  type;  /* GB_AUDIO_CTL_ELEM_TYPE_* */
     ^~~~
   include/linux/greybus/greybus_protocols.h:1999:2: error: unknown type name '__le16'
     __le16  dimen[4];
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:2008:2: error: unknown type name '__le64'
     __le64    timestamp; /* XXX needed? */
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:2010:3: error: unknown type name '__le32'
      __le32 integer_value[2]; /* consider CTL_DOUBLE_xxx */
      ^~~~~~
   include/linux/greybus/greybus_protocols.h:2011:3: error: unknown type name '__le64'
      __le64 integer64_value[2];
      ^~~~~~
   include/linux/greybus/greybus_protocols.h:2012:3: error: unknown type name '__le32'
      __le32 enumerated_item[2];
      ^~~~~~
   include/linux/greybus/greybus_protocols.h:2017:2: error: unknown type name '__u8'
     __u8 name[AUDIO_CONTROL_NAME_MAX];
     ^~~~
   include/linux/greybus/greybus_protocols.h:2018:2: error: unknown type name '__u8'
     __u8 id;  /* 0-63 */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2019:2: error: unknown type name '__u8'
     __u8 iface;  /* GB_AUDIO_IFACE_* */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2020:2: error: unknown type name '__le16'
     __le16 data_cport;
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:2021:2: error: unknown type name '__le32'
     __le32 access;  /* GB_AUDIO_ACCESS_* */
     ^~~~~~
   include/linux/greybus/greybus_protocols.h:2022:2: error: unknown type name '__u8'
     __u8    count;  /* count of same elements */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2023:2: error: unknown type name '__u8'
     __u8 count_values; /* count of values, max=2 for CTL_DOUBLE_xxx */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2028:2: error: unknown type name '__u8'
     __u8 name[AUDIO_WIDGET_NAME_MAX];
     ^~~~
   include/linux/greybus/greybus_protocols.h:2029:2: error: unknown type name '__u8'
     __u8 sname[AUDIO_WIDGET_NAME_MAX];
     ^~~~
   include/linux/greybus/greybus_protocols.h:2030:2: error: unknown type name '__u8'
     __u8 id;
     ^~~~
   include/linux/greybus/greybus_protocols.h:2031:2: error: unknown type name '__u8'
     __u8 type;  /* GB_AUDIO_WIDGET_TYPE_* */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2032:2: error: unknown type name '__u8'
     __u8 state;  /* GB_AUDIO_WIDGET_STATE_* */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2033:2: error: unknown type name '__u8'
     __u8 ncontrols;
     ^~~~
   include/linux/greybus/greybus_protocols.h:2038:2: error: unknown type name '__u8'
     __u8 source_id; /* widget id */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2039:2: error: unknown type name '__u8'
     __u8 destination_id; /* widget id */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2040:2: error: unknown type name '__u8'
     __u8 control_id; /* 0-63 */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2041:2: error: unknown type name '__u8'
     __u8 index;  /* Selection within the control */
     ^~~~
   include/linux/greybus/greybus_protocols.h:2045:2: error: unknown type name '__u8'
     __u8 num_dais;
     ^~~~
   include/linux/greybus/greybus_protocols.h:2046:2: error: unknown type name '__u8'
     __u8 num_controls;
     ^~~~
   include/linux/greybus/greybus_protocols.h:2047:2: error: unknown type name '__u8'
     __u8 num_widgets;
     ^~~~
   include/linux/greybus/greybus_protocols.h:2048:2: error: unknown type name '__u8'
     __u8 num_routes;
     ^~~~
   include/linux/greybus/greybus_protocols.h:2049:2: error: unknown type name '__le32'
     __le32 size_dais;
..

vim +/__le16 +45 include/linux/greybus/greybus_protocols.h

cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22   21  
f8765177034a52 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2018-11-20   22  
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   23  /*
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   24   * All operation messages (both requests and responses) begin with
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   25   * a header that encodes the size of the message (header included).
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   26   * This header also contains a unique identifier, that associates a
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   27   * response message with its operation.  The header contains an
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   28   * operation type field, whose interpretation is dependent on what
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   29   * type of protocol is used over the connection.  The high bit
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   30   * (0x80) of the operation type field is used to indicate whether
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   31   * the message is a request (clear) or a response (set).
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   32   *
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   33   * Response messages include an additional result byte, which
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   34   * communicates the result of the corresponding request.  A zero
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   35   * result value means the operation completed successfully.  Any
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   36   * other value indicates an error; in this case, the payload of the
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   37   * response message (if any) is ignored.  The result byte must be
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   38   * zero in the header for a request message.
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   39   *
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   40   * The wire format for all numeric fields in the header is little
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   41   * endian.  Any operation-specific data begins immediately after the
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   42   * header.
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   43   */
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   44  struct gb_operation_msg_hdr {
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29  @45  	__le16	size;		/* Size in bytes of header + payload */
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   46  	__le16	operation_id;	/* Operation unique id */
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29  @47  	__u8	type;		/* E.g GB_I2C_TYPE_* or GB_GPIO_TYPE_* */
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   48  	__u8	result;		/* Result of request (in responses only) */
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   49  	__u8	pad[2];		/* must be zero (ignore when read) */
b701686a3e6739 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-08-31   50  } __packed;
e34fae58f6e004 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-29   51  
f8765177034a52 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2018-11-20   52  
7adb32b429ce38 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-04-29   53  /* Generic request types */
aac0839ea20306 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-26   54  #define GB_REQUEST_TYPE_CPORT_SHUTDOWN		0x00
7adb32b429ce38 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-04-29   55  #define GB_REQUEST_TYPE_INVALID			0x7f
2b11a45d29f52c drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-08-11   56  
aac0839ea20306 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-26   57  struct gb_cport_shutdown_request {
aac0839ea20306 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-26   58  	__u8 phase;
aac0839ea20306 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-26   59  } __packed;
aac0839ea20306 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-26   60  
f8765177034a52 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2018-11-20   61  
6366d73fd49b68 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-21   62  /* Control Protocol */
6366d73fd49b68 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-07-21   63  
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22   64  /* Greybus control request types */
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   65  #define GB_CONTROL_TYPE_VERSION			0x01
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22   66  #define GB_CONTROL_TYPE_PROBE_AP		0x02
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22   67  #define GB_CONTROL_TYPE_GET_MANIFEST_SIZE	0x03
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22   68  #define GB_CONTROL_TYPE_GET_MANIFEST		0x04
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22   69  #define GB_CONTROL_TYPE_CONNECTED		0x05
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22   70  #define GB_CONTROL_TYPE_DISCONNECTED		0x06
0bd39ca4898fb5 drivers/staging/greybus/greybus_protocols.h Bryan O'Donoghue   2016-03-02   71  #define GB_CONTROL_TYPE_TIMESYNC_ENABLE		0x07
0bd39ca4898fb5 drivers/staging/greybus/greybus_protocols.h Bryan O'Donoghue   2016-03-02   72  #define GB_CONTROL_TYPE_TIMESYNC_DISABLE	0x08
0bd39ca4898fb5 drivers/staging/greybus/greybus_protocols.h Bryan O'Donoghue   2016-03-02   73  #define GB_CONTROL_TYPE_TIMESYNC_AUTHORITATIVE	0x09
0decdd55b38ac8 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2016-05-05   74  /*	Unused					0x0a */
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   75  #define GB_CONTROL_TYPE_BUNDLE_VERSION		0x0b
197616e227b5b5 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-05-27   76  #define GB_CONTROL_TYPE_DISCONNECTING		0x0c
fa433b619655bf drivers/staging/greybus/greybus_protocols.h Bryan O'Donoghue   2016-05-12   77  #define GB_CONTROL_TYPE_TIMESYNC_GET_LAST_EVENT	0x0d
1c3aead12ea4df drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-04-29   78  #define GB_CONTROL_TYPE_MODE_SWITCH		0x0e
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07   79  #define GB_CONTROL_TYPE_BUNDLE_SUSPEND		0x0f
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07   80  #define GB_CONTROL_TYPE_BUNDLE_RESUME		0x10
f61908f94a9fc5 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07   81  #define GB_CONTROL_TYPE_BUNDLE_DEACTIVATE	0x11
f61908f94a9fc5 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07   82  #define GB_CONTROL_TYPE_BUNDLE_ACTIVATE		0x12
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07   83  #define GB_CONTROL_TYPE_INTF_SUSPEND_PREPARE		0x13
30ea26bdd40339 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07   84  #define GB_CONTROL_TYPE_INTF_DEACTIVATE_PREPARE	0x14
385227fce67959 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07   85  #define GB_CONTROL_TYPE_INTF_HIBERNATE_ABORT	0x15
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22   86  
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   87  struct gb_control_version_request {
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   88  	__u8	major;
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   89  	__u8	minor;
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   90  } __packed;
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   91  
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   92  struct gb_control_version_response {
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   93  	__u8	major;
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   94  	__u8	minor;
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   95  } __packed;
e217ae762bccb0 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   96  
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   97  struct gb_control_bundle_version_request {
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   98  	__u8	bundle_id;
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19   99  } __packed;
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19  100  
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19  101  struct gb_control_bundle_version_response {
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19  102  	__u8	major;
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19  103  	__u8	minor;
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19  104  } __packed;
b807aa7aa51129 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-01-19  105  
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  106  /* Control protocol manifest get size request has no payload*/
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  107  struct gb_control_get_manifest_size_response {
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  108  	__le16			size;
b701686a3e6739 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-08-31  109  } __packed;
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  110  
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  111  /* Control protocol manifest get request has no payload */
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  112  struct gb_control_get_manifest_response {
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  113  	__u8			data[0];
b701686a3e6739 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-08-31  114  } __packed;
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  115  
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  116  /* Control protocol [dis]connected request */
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  117  struct gb_control_connected_request {
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  118  	__le16			cport_id;
b701686a3e6739 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-08-31  119  } __packed;
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  120  
197616e227b5b5 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-05-27  121  struct gb_control_disconnecting_request {
197616e227b5b5 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-05-27  122  	__le16			cport_id;
197616e227b5b5 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-05-27  123  } __packed;
197616e227b5b5 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-05-27  124  /* disconnecting response has no payload */
197616e227b5b5 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-05-27  125  
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  126  struct gb_control_disconnected_request {
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  127  	__le16			cport_id;
b701686a3e6739 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-08-31  128  } __packed;
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  129  /* Control protocol [dis]connected response has no payload */
cdee4f7505dbb0 drivers/staging/greybus/greybus_protocols.h Viresh Kumar       2015-06-22  130  
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  131  /*
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  132   * All Bundle power management operations use the same request and response
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  133   * layout and status codes.
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  134   */
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  135  
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  136  #define GB_CONTROL_BUNDLE_PM_OK		0x00
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  137  #define GB_CONTROL_BUNDLE_PM_INVAL	0x01
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  138  #define GB_CONTROL_BUNDLE_PM_BUSY	0x02
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  139  #define GB_CONTROL_BUNDLE_PM_FAIL	0x03
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  140  #define GB_CONTROL_BUNDLE_PM_NA		0x04
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  141  
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  142  struct gb_control_bundle_pm_request {
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07 @143  	__u8	bundle_id;
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  144  } __packed;
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  145  
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  146  struct gb_control_bundle_pm_response {
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  147  	__u8	status;
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  148  } __packed;
2c8e8841e3b8ce drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  149  
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  150  /*
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  151   * Interface Suspend Prepare and Deactivate Prepare operations use the same
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  152   * response layout and error codes. Define a single response structure and reuse
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  153   * it. Both operations have no payload.
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  154   */
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  155  
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  156  #define GB_CONTROL_INTF_PM_OK		0x00
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  157  #define GB_CONTROL_INTF_PM_BUSY		0x01
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  158  #define GB_CONTROL_INTF_PM_NA		0x02
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  159  
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  160  struct gb_control_intf_pm_response {
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  161  	__u8	status;
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  162  } __packed;
f53be0eaf06033 drivers/staging/greybus/greybus_protocols.h David Lin          2016-07-07  163  
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  164  /* APBridge protocol */
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  165  
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  166  /* request APB1 log */
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  167  #define GB_APB_REQUEST_LOG			0x02
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  168  
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  169  /* request to map a cport to bulk in and bulk out endpoints */
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  170  #define GB_APB_REQUEST_EP_MAPPING		0x03
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  171  
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  172  /* request to get the number of cports available */
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  173  #define GB_APB_REQUEST_CPORT_COUNT		0x04
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  174  
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  175  /* request to reset a cport state */
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  176  #define GB_APB_REQUEST_RESET_CPORT		0x05
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  177  
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  178  /* request to time the latency of messages on a given cport */
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  179  #define GB_APB_REQUEST_LATENCY_TAG_EN		0x06
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  180  #define GB_APB_REQUEST_LATENCY_TAG_DIS		0x07
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  181  
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  182  /* request to control the CSI transmitter */
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  183  #define GB_APB_REQUEST_CSI_TX_CONTROL		0x08
e5273381041fc7 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2015-12-31  184  
a4fe35072f3c53 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-10  185  /* request to control audio streaming */
4dbf5056405ad3 drivers/staging/greybus/greybus_protocols.h Mark Greer         2016-01-13  186  #define GB_APB_REQUEST_AUDIO_CONTROL		0x09
4dbf5056405ad3 drivers/staging/greybus/greybus_protocols.h Mark Greer         2016-01-13  187  
83d474f7aa467a drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-10  188  /* TimeSync requests */
83d474f7aa467a drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-10  189  #define GB_APB_REQUEST_TIMESYNC_ENABLE		0x0d
83d474f7aa467a drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-10  190  #define GB_APB_REQUEST_TIMESYNC_DISABLE		0x0e
83d474f7aa467a drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-10  191  #define GB_APB_REQUEST_TIMESYNC_AUTHORITATIVE	0x0f
83d474f7aa467a drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-10  192  #define GB_APB_REQUEST_TIMESYNC_GET_LAST_EVENT	0x10
c8a657ba3f8464 drivers/staging/greybus/greybus_protocols.h Bryan O'Donoghue   2016-05-15  193  
74ec7598b51fb3 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-06-22  194  /* requests to set Greybus CPort flags */
74ec7598b51fb3 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-06-22  195  #define GB_APB_REQUEST_CPORT_FLAGS		0x11
74ec7598b51fb3 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-06-22  196  
83d474f7aa467a drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-10  197  /* ARPC request */
83d474f7aa467a drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-08-10  198  #define GB_APB_REQUEST_ARPC_RUN			0x12
c14118a8411c4d drivers/staging/greybus/greybus_protocols.h Alexandre Bailon   2016-07-07  199  
74ec7598b51fb3 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-06-22  200  struct gb_apb_request_cport_flags {
6a1d29595ed7af drivers/staging/greybus/greybus_protocols.h Bryan O'Donoghue   2016-07-18 @201  	__le32	flags;
74ec7598b51fb3 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-06-22  202  #define GB_APB_CPORT_FLAG_CONTROL		0x01
74ec7598b51fb3 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-06-22  203  #define GB_APB_CPORT_FLAG_HIGH_PRIO		0x02
74ec7598b51fb3 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-06-22  204  } __packed;
74ec7598b51fb3 drivers/staging/greybus/greybus_protocols.h Johan Hovold       2016-06-22  205  
f8765177034a52 drivers/staging/greybus/greybus_protocols.h Greg Kroah-Hartman 2018-11-20  206  

:::::: The code at line 45 was first introduced by commit
:::::: e34fae58f6e004baf26ddac937ac13bd53b7c5f2 greybus: operation: Move operation header to greybus_protocols.h

:::::: TO: Viresh Kumar <viresh.kumar@linaro.org>
:::::: CC: Greg Kroah-Hartman <gregkh@google.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--o3azx6vl63rewmi5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--o3azx6vl63rewmi5
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--o3azx6vl63rewmi5--
